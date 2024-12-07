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
#        t_api::APIClient.TradeApi
#        a_api::APIClient.AccountApi

        function Client(url::String, api_key::String="", api_secret::String="")
            client = OpenAPI.Clients.Client(url)
            return new(client,
                       APIClient.MarketApi(client)
#                       APIClient.TradeApi(client, api_key, api_secret),
#                       APIClient.AccountApi(client, api_key, api_secret)
                    )
        end

    end

    # Market API wrapper functions
    function agg_trades(cl::Client, symbol::String; kwargs...)
        (response, headers) = APIClient.agg_trades(cl.m_api, symbol; kwargs...)
        response
    end

    function asset_index(cl::Client; kwargs...)
        (response, headers) = APIClient.asset_index(cl.m_api; kwargs...)
        response
    end

    function basis(cl::Client; kwargs...)
        (response, headers) = APIClient.basis(cl.m_api; kwargs...)
        response
    end

    function book_ticker(cl::Client; kwargs...)
        (response, headers) = APIClient.book_ticker(cl.m_api; kwargs...)
        response
    end

    function constituents(cl::Client; kwargs...)
        (response, headers) = APIClient.constituents(cl.m_api; kwargs...)
        response
    end

    function continuous_klines(cl::Client; kwargs...)
        (response, headers) = APIClient.continuous_klines(cl.m_api; kwargs...)
        response
    end

    function depth(cl::Client, symbol::String; kwargs...)
        (response, headers) = APIClient.depth(cl.m_api, symbol; kwargs...)
        response
    end

    function exchange_info(cl::Client; kwargs...)
        (response, headers) = APIClient.exchange_info(cl.m_api; kwargs...)
        response
    end

    function funding_rate(cl::Client; kwargs...)
        (response, headers) = APIClient.funding_rate(cl.m_api; kwargs...)
        response
    end

    function global_long_short_account_ratio(cl::Client; kwargs...)
        (response, headers) = APIClient.global_long_short_account_ratio(cl.m_api; kwargs...)
        response
    end

    function historical_trades(cl::Client, symbol::String; kwargs...)
        (response, headers) = APIClient.historical_trades(cl.m_api, symbol; kwargs...)
        response
    end

    function index_info(cl::Client; kwargs...)
        (response, headers) = APIClient.index_info(cl.m_api; kwargs...)
        response
    end

    function index_price_klines(cl::Client; kwargs...)
        (response, headers) = APIClient.index_price_klines(cl.m_api; kwargs...)
        response
    end

    function klines(cl::Client, symbol::String, interval::String; kwargs...)
        (response, headers) = APIClient.klines(cl.m_api, symbol, interval; kwargs...)
        response
    end

    function lvt_klines(cl::Client; kwargs...)
        (response, headers) = APIClient.lvt_klines(cl.m_api; kwargs...)
        response
    end

    function mark_price_klines(cl::Client; kwargs...)
        (response, headers) = APIClient.mark_price_klines(cl.m_api; kwargs...)
        response
    end

    function open_interest(cl::Client; kwargs...)
        (response, headers) = APIClient.open_interest(cl.m_api; kwargs...)
        response
    end

    function ping(cl::Client; kwargs...)
        (response, headers) = APIClient.ping(cl.m_api; kwargs...)
        response
    end

    function price(cl::Client; kwargs...)
        (response, headers) = APIClient.price(cl.m_api; kwargs...)
        response
    end

    function ticker_24hr(cl::Client; kwargs...)
        (response, headers) = APIClient.ticker_24hr(cl.m_api; kwargs...)
        response
    end

    function ticker_price(cl::Client; kwargs...)
        (response, headers) = APIClient.ticker_price(cl.m_api; kwargs...)
        response
    end

    function server_time(cl::Client; kwargs...)
        (response, headers) = APIClient.server_time(cl.m_api; kwargs...)
        response
    end

    function top_long_short_account_ratio(cl::Client; kwargs...)
        (response, headers) = APIClient.top_long_short_account_ratio(cl.m_api; kwargs...)
        response
    end

    function top_long_short_position_ratio(cl::Client; kwargs...)
        (response, headers) = APIClient.top_long_short_position_ratio(cl.m_api; kwargs...)
        response
    end

    function trades(cl::Client, symbol::String; kwargs...)
        (response, headers) = APIClient.trades(cl.m_api, symbol; kwargs...)
        response
    end

    function ui_klines(cl::Client; kwargs...)
        (response, headers) = APIClient.ui_klines(cl.m_api; kwargs...)
        response
    end

    # Export market API functions

    export agg_trades, asset_index, basis, book_ticker, constituents, continuous_klines,
           depth, exchange_info, funding_rate, global_long_short_account_ratio, historical_trades,
           index_info, index_price_klines, klines, lvt_klines, mark_price_klines, open_interest,
           ping, price, ticker_24hr, ticker_price, server_time, top_long_short_account_ratio,
           top_long_short_position_ratio, trades, ui_klines

    export MarketApi, TradeApi, AccountApi, DataStreamApi, PortfolioMarginApi, Client

end