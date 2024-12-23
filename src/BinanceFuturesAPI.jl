"""
    module BinanceFuturesAPI

A Julia module for interacting with the Binance Futures API.

This module provides a high-level interface to the Binance Futures API endpoints,
organizing them into distinct API groups (Market, Trade, Account, etc.) for better usability.
"""
module BinanceFuturesAPI
    include("../APIClient/src/APIClient.jl")
    # import .APIClient
    using OpenAPI
    using Dates
    using SHA
    using Base64
    using Logging
    using LoggingExtras

    # constant tables
    include("cost_table.jl")
    include("param_case_mapping.jl")

    """
        timestamp() -> Int64

    Get the current UTC timestamp in milliseconds since Unix epoch.
    Used for Binance API requests which require a timestamp parameter.

    Returns:
        Int64: Current UTC timestamp in milliseconds
    """
    timestamp() = Int64(round(datetime2unix(now(UTC)) * 1000))

    """
        timestamp!(d::Dict{Symbol, Any}) -> Dict{Symbol, Any}

    Add current UTC timestamp to a dictionary of parameters.
    Modifies the dictionary in-place by adding or updating the :timestamp key.

    Args:
        d: Dictionary to add timestamp to

    Returns:
        The modified dictionary with timestamp added
    """
    timestamp!(d::Dict{Symbol, Any}) = begin d[:timestamp] = timestamp(); return d; end

    _sig_collect(x::Dict) = collect(x) |> (x -> sort(x, by=x->x[1])) |> (x -> map(y -> "$(y[1])=$(y[2])", x)) |> (x -> join(x, "&"))

    """
        signature(secret::String; kwargs...) -> String

    Generate HMAC SHA256 signature for Binance API request parameters.
    Handles parameter name conversion from snake_case to camelCase using PARAM_CASE_MAPPING.

    Args:
        secret: API secret key for signing
        kwargs: Request parameters as keyword arguments

    Returns:
        String: Hexadecimal signature of the sorted and joined parameters
    """
    signature(secret::String; kwargs...) = begin
        # Convert kwargs to Dict
        params = Dict{String,Any}()
        for (k,v) in kwargs
            ks = string(k)
            params[get(PARAM_CASE_MAPPING, k, ks)] = v
        end
        qs = params |>
            (x -> _sig_collect(x))
        @debug "querystring for signature: $qs"
        qs |>
            (x -> bytes2hex(hmac_sha256(Vector{UInt8}(secret), Vector{UInt8}(x))))
    end

    """
        sign_hook(resource_path::AbstractString, body::Any) -> Tuple{String, Any}

    Hook function for OpenAPI client to sign requests before sending.
    Extracts query parameters from resource path, verifies signature parameter,
    and reconstructs the path with proper parameter ordering.

    Args:
        resource_path: Full request URL including query parameters
        body: Request body (unused but required by OpenAPI)

    Returns:
        Tuple of (modified resource path, unchanged body)
    """
    sign_hook(resource_path::AbstractString, body::Any) = begin

        pq = split(resource_path, '?', limit=2)
        if length(pq) != 2
            return resource_path, body
        end
        path, query = pq

        q = split(query, '&') |>
            ( x -> split.(x, '=')) |>
            ( x -> map(y -> (y[1], y[2]), x)) |>
            ( x -> Dict(x))
        sig = get(q, "signature", nothing)
        if sig !== nothing
            delete!(q, "signature")
            query_string = q |>
                (x -> _sig_collect(x)) |>
                (x -> string(x, "&signature=", sig))
            @debug "querystring in sign_hook: $query_string"
            resource_path = string(path, "?",  query_string)
        end
        resource_path, body
    end

    pre_request_hook(ctx::OpenAPI.Clients.Ctx) = ctx
    pre_request_hook(resource_path::AbstractString, body::Any, headers::Dict{String,String}) = begin
        resource_path, body = sign_hook(resource_path, body)
        resource_path, body, headers
    end

    struct Cost
        reported::Int64 # returned from last API call
        active::Int64   # sum of all active requests

        Cost() = new(0, 0)
        Cost(co::Cost) = new(co.reported, co.active)
        Cost(reported::Int64, active::Int64) = new(reported, active)
    end


    """
        struct Client

    A client for interacting with the Binance Futures API.

    # Fields
    - `client::OpenAPI.Clients.Client`: The underlying OpenAPI client
    - `api_key::String`: Binance API key for authenticated requests
    - `api_secret::String`: Binance API secret for request signing

    # Constructor
        Client(url::String, api_key::String="", api_secret::String="")

    Create a new Binance Futures API client.

    # Arguments
    - `url::String`: Base URL for the Binance Futures API
    - `api_key::String`: Optional API key for authenticated requests
    - `api_secret::String`: Optional API secret for request signing

    # Example
    ```julia
    # Create a client for public endpoints
    client = Client("https://fapi.binance.com")

    # Create a client for authenticated endpoints
    client = Client("https://fapi.binance.com", "your_api_key", "your_api_secret")
    ```
    """


    mutable struct Client
        client::OpenAPI.Clients.Client
        m_api::APIClient.MarketApi
        t_api::APIClient.TradeApi
        a_api::APIClient.AccountApi
        o_api::APIClient.OrderApi
        d_api::APIClient.DataStreamApi
        cost::Cost
        api_key::String
        api_secret::String

        function Client(url::String, api_key::String="", api_secret::String=""; verbose=false)
            if verbose
                global_logger(ConsoleLogger(stderr, Logging.Debug))
            end
            client = OpenAPI.Clients.Client(url; verbose=verbose, pre_request_hook=pre_request_hook)
            new(client,
                APIClient.MarketApi(client),
                APIClient.TradeApi(client),
                APIClient.AccountApi(client),
                APIClient.OrderApi(client),
                APIClient.DataStreamApi(client),
                Cost(),
                api_key,
                api_secret
            )
        end

    end


    SimpleAPI = Union{APIClient.MarketApi, APIClient.DataStreamApi}
    SignedAPI = Union{APIClient.TradeApi, APIClient.AccountApi, APIClient.OrderApi}
    AnyAPI = Union{SignedAPI, SimpleAPI}

    cost_reset!(cl::Client) = cl.cost = Cost()
    cost(f::Function) = get(COST_TABLE, nameof(f), WEIGHT_MINIMAL)

    wait_until_next_minute() = begin
        c = 0
        t0 = div(time(), 60)
        while div(time(), 60) == t0
            sleep(1)
            c += 1
        end
        c
    end

    wrap2!(cl::Client, f::Function, api::AnyAPI, args...; kwargs...) = begin
        while cost_exceeds_limit(cl, f)
            wait_until_next_minute()
            cost_reset!(cl)
        end
        cl.cost = Cost(cl.cost.reported, cl.cost.active + cost(f))
        response, status = f(api, args...; kwargs...)
        weight = status.headers |>
                    Dict |>
                    (x->get(x, "x-mbx-used-weight-1m", "0"))  |>
                    (x -> parse(Int64, x))
        cl.cost = Cost(weight, cl.cost.active - cost(f))
        response
    end


    wrap!(cl::Client, f::Function, api::SimpleAPI, args...; kwargs...) = begin
        wrap2!(cl, f, api, args...; kwargs...)
    end

    wrap!(cl::Client, f::Function, api::SignedAPI, args...; kwargs...) = begin
        pars = Dict{Symbol, Any}(kwargs...)
        timestamp!(pars)
        pars[:signature] = signature(cl.api_secret; pars...)
        pars[:x_mbx_apikey] = cl.api_key
        wrap2!(cl, f, api, args...; pars...)
    end

    # function sign_request(secret::String, kwargs::Base.Pairs)
    #     # Convert kwargs to Dict
    #     params = Dict{String,Any}()
    #     for (k,v) in kwargs
    #         params[string(k)] = v
    #     end
    #     sign_request(secret, params)
    # end

    default_config() = Dict{String, Any}(
        "rest_api" => Dict{String, Any}(
            "base_url" => "https://fapi.binance.com",
            "key" => "",
            "secret" => ""
        ),
        "ws_api" => Dict{String, Any}(
            "base_url" => "wss://fstream.binance.com",
            "key" => "",
            "secret" => ""
        )
    )
    default_test_config() = Dict{String, Any}(
        "rest_api" => Dict{String, Any}(
            "base_url" => "https://testnet.binancefuture.com",
            "key" => "",
            "secret" => ""
        ),
        "ws_api" => Dict{String, Any}(
            "base_url" => "wss://testnet.binancefuture.com",
            "key" => "",
            "secret" => ""
        )
    )

    # __precompile__(false)
    include("wrap_market_api.jl")
    include("wrap_trade_api.jl")
    include("wrap_account_api.jl")
    include("wrap_order_api.jl")
    include("wrap_datastream_api.jl")
    # include("datastream_api_wrappers.jl")
    # include("portfoliomargin_api_wrappers.jl")
    # __precompile__(true)

    """
        cost_exceeds_limit(cl::Client, f::Function) -> Bool

    Check if executing the function `f` would exceed the API cost limit for the given client.

    # Arguments
    - `cl::Client`: The Binance Futures API client
    - `f::Function`: The API function to be called

    # Returns
    - `Bool`: `true` if executing the function would exceed the cost limit (including safety margin), `false` otherwise

    The function checks if the sum of:
    1. The current accumulated cost (`cl.cost.last_reported`)
    2. The cost of the function to be executed (`get(COST_TABLE, f, 2)`)

    would exceed `COST_LIMIT - COST_LIMIT_SAFETY_MARGIN`.

    Default cost for unknown functions is 30 (= WEIGHT_HEAVY).
    """
    cost_exceeds_limit(cl::Client, f::Function) = begin
        (get(COST_TABLE, nameof(f), WEIGHT_HEAVY) + cl.cost.active + cl.cost.reported) > (COST_LIMIT - COST_LIMIT_SAFETY_MARGIN)
    end
    export cost_exceeds_limit

    export MarketApi, TradeApi, AccountApi, DataStreamApi, PortfolioMarginApi, Client

end
