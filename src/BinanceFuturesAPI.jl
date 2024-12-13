"""
    module BinanceFuturesAPI

A Julia module for interacting with the Binance Futures API.

This module provides a high-level interface to the Binance Futures API endpoints,
organizing them into distinct API groups (Market, Trade, Account, etc.) for better usability.
"""
module BinanceFuturesAPI
    include("../APIClient/src/APIClient.jl")
    using .APIClient
    using OpenAPI
    using Dates
    using SHA
    using Base64

    timestamp() = Int64(round(datetime2unix(now(UTC)) * 1000))
    timestamp!(d::Dict{Symbol, Any}) = begin d[:timestamp] = timestamp(); return d; end

    function sign_params!(d::Dict{Symbol, Any}, secret::String)
        timestamp!(d)
        d[:signature] = sign_request(secret, d)
        return d
    end

    function signed_kwargs(secret::String; kwargs...)
        d = Dict{Symbol, Any}(kwargs...)
        timestamp!(d)
        d[:signature] = sign_request(secret, d)
        return d
    end

    function sign_request(secret::String, params::Dict)
        # Sort parameters alphabetically
        sorted_params = sort(collect(params), by=x->x[1])

        # Create query string
        query_string = join(["$(k)=$(v)" for (k,v) in sorted_params], "&")

        # Create HMAC SHA256 signature
        hmac = hmac_sha256(Vector{UInt8}(secret), Vector{UInt8}(query_string))
        ret = bytes2hex(hmac)
        # println("sign_request: $query_string -> $ret")
        ret
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
    struct Client
        client::OpenAPI.Clients.Client
        m_api::APIClient.MarketApi
        t_api::APIClient.TradeApi
        a_api::APIClient.AccountApi
        api_key::String
        api_secret::String

        function Client(url::String, api_key::String="", api_secret::String="")
            client = OpenAPI.Clients.Client(url; verbose=true, pre_request_hook=pre_request_hook)
            new(client,
                APIClient.MarketApi(client),
                APIClient.TradeApi(client),
                APIClient.AccountApi(client),
                api_key,
                api_secret
            )
        end

    end

    function sign_hook(resource_path::AbstractString, body::Any)
        pq = split(resource_path, '?', limit=2)
        if length(pq) != 2
            return resource_path, body
        end
        path, query = pq
        tupels = split(query, '&') |> ( x -> split.(x, '=')) |> (x -> map(y -> (y[1], y[2]), x))
        q = Dict{String,String}(tupels)
        sig = get(q, "signature", nothing)
        if sig !== nothing
            delete!(q, "signature")
            resource_path = string(path, "?", join(["$(k)=$(v)" for (k,v) in sort(collect(q), by=x->x[1])], "&"), "&signature=", sig)
        end
        resource_path, body
    end


    function pre_request_hook(ctx::OpenAPI.Clients.Ctx)
        ctx
    end
    function pre_request_hook(resource_path::AbstractString, body::Any, headers::Dict{String,String})
        resource_path, body = sign_hook(resource_path, body)
        resource_path, body, headers
    end

    wrap!(cl::Client, f::Function, api::APIClient.MarketApi, args...; kwargs...) = begin
        response, headers = f(api, args...; kwargs...)
        response
    end

    SignedAPI = Union{APIClient.TradeApi, APIClient.AccountApi}

    wrap!(cl::Client, f::Function, api::SignedAPI, args...; kwargs...) = begin
        params = signed_kwargs(cl.api_secret; kwargs...)
        response, headers = f(api, args...; x_mbx_apikey=cl.api_key, params...)
        response
    end

    include("wrap_market_api.jl")
    include("wrap_trade_api.jl")
    include("wrap_account_api.jl")
    # include("datastream_api_wrappers.jl")
    # include("portfoliomargin_api_wrappers.jl")

    export MarketApi, TradeApi, AccountApi, DataStreamApi, PortfolioMarginApi, Client

end
