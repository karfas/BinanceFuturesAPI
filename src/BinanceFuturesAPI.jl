"""
    BinanceFuturesAPI

A Julia package providing a type-safe interface to the Binance USDT-M Futures API.
This package is generated from the official Binance Futures API OpenAPI specification
and provides complete coverage of all API endpoints.

# Features
- Complete coverage of Binance USDT-M Futures API
- Type-safe API client
- Support for all market data endpoints
- Support for trading operations
- Support for account and position management

# Example
```julia
using BinanceFuturesAPI

# Create a Market API client
client = MarketApi("https://fapi.binance.com")

# Get exchange information
info = client.exchange_information()

# Get klines (candlestick) data
klines = client.klines("BTCUSDT"; interval="1m", limit=100)
```
"""
module BinanceFuturesAPI
    include("../APIClient/src/APIClient.jl")
    using Reexport
    @reexport using .APIClient
    using OpenAPI.Clients: Client

    """
        MarketApi(base_url::String)

    Creates a client for accessing Binance Futures Market API endpoints.

    # Arguments
    - `base_url::String`: The base URL for the Binance Futures API (e.g., "https://fapi.binance.com")

    # Returns
    - A `MarketApi` client instance that can be used to access market data endpoints

    # Example
    ```julia
    market = MarketApi("https://fapi.binance.com")
    info = exchange_information(market)
    ```
    """
    MarketApi(url::String) = APIClient.MarketApi(Client(url))

    """
        TradeApi(base_url::String, api_key::String, api_secret::String)

    Creates an authenticated client for accessing Binance Futures Trade API endpoints.

    # Arguments
    - `base_url::String`: The base URL for the Binance Futures API (e.g., "https://fapi.binance.com")
    - `api_key::String`: Your Binance API key
    - `api_secret::String`: Your Binance API secret

    # Returns
    - A `TradeApi` client instance that can be used for trading operations

    # Example
    ```julia
    trade = TradeApi("https://fapi.binance.com", "your_api_key", "your_api_secret")
    order = new_order_trade(trade, symbol="BTCUSDT", side="BUY", order_type="LIMIT", quantity=0.001, price=50000.0)
    ```
    """
    TradeApi(url::String, api_key::String, api_secret::String) = APIClient.TradeApi(Client(url), api_key, api_secret)

    """
        AccountApi(base_url::String, api_key::String, api_secret::String)

    Creates an authenticated client for accessing Binance Futures Account API endpoints.

    # Arguments
    - `base_url::String`: The base URL for the Binance Futures API (e.g., "https://fapi.binance.com")
    - `api_key::String`: Your Binance API key
    - `api_secret::String`: Your Binance API secret

    # Returns
    - An `AccountApi` client instance that can be used for account and position management

    # Example
    ```julia
    account = AccountApi("https://fapi.binance.com", "your_api_key", "your_api_secret")

    # Get account information
    info = account_information(account, timestamp=Int64(time() * 1000))

    # Get position information
    positions = position_information(account, timestamp=Int64(time() * 1000))
    ```
    """
    AccountApi(url::String, api_key::String, api_secret::String) = APIClient.AccountApi(Client(url), api_key, api_secret)

    """
        DataStreamApi(base_url::String, api_key::String="", api_secret::String="")

    Creates a client for managing WebSocket data streams. The API key and secret are optional
    for public streams but required for user data streams.

    # Arguments
    - `base_url::String`: The base URL for the Binance Futures API (e.g., "https://fapi.binance.com")
    - `api_key::String`: (Optional) Your Binance API key, required for user data streams
    - `api_secret::String`: (Optional) Your Binance API secret, required for user data streams

    # Returns
    - A `DataStreamApi` client instance that can be used to manage WebSocket streams

    # Example
    ```julia
    # For public streams
    stream = DataStreamApi("https://fapi.binance.com")

    # For user data streams
    stream = DataStreamApi("https://fapi.binance.com", "your_api_key", "your_api_secret")
    listen_key = start_user_data_stream(stream)
    ```
    """
    DataStreamApi(url::String, api_key::String="", api_secret::String="") = APIClient.DataStreamApi(Client(url), api_key, api_secret)

    """
        PortfolioMarginApi(base_url::String, api_key::String, api_secret::String)

    Creates an authenticated client for accessing Binance Futures Portfolio Margin API endpoints.
    Portfolio margin mode allows cross-margin across all positions.

    # Arguments
    - `base_url::String`: The base URL for the Binance Futures API (e.g., "https://fapi.binance.com")
    - `api_key::String`: Your Binance API key
    - `api_secret::String`: Your Binance API secret

    # Returns
    - A `PortfolioMarginApi` client instance that can be used for portfolio margin operations

    # Example
    ```julia
    portfolio = PortfolioMarginApi("https://fapi.binance.com", "your_api_key", "your_api_secret")

    # Get portfolio margin account info
    info = portfolio_margin_account_information(portfolio, timestamp=Int64(time() * 1000))
    ```
    """
    PortfolioMarginApi(url::String, api_key::String, api_secret::String) = APIClient.PortfolioMarginApi(Client(url), api_key, api_secret)

    export MarketApi, TradeApi, AccountApi, DataStreamApi, PortfolioMarginApi

end
