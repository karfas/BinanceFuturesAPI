# Market API

The Market API provides access to market data such as order books, trades, and klines.

## Market API Reference

```@docs
BinanceFuturesAPI.MarketApi
APIClient.test_connectivity
APIClient.exchange_information
# APIClient.klines
APIClient.continuous_contract_kline_candlestick_data
APIClient.order_book
# APIClient.recent_trades
# APIClient.agg_trades
# APIClient.ticker_24hr
# APIClient.ticker_price
# APIClient.book_ticker
APIClient.open_interest_statistics
APIClient.composite_index_symbol_information
APIClient.mark_price
APIClient.mark_price_kline_candlestick_data
APIClient.index_price_kline_candlestick_data
APIClient.get_funding_rate_history
```

## Examples

### Getting Market Data

```julia
using BinanceFuturesAPI

# Create a Market API client
market = MarketApi("https://fapi.binance.com")

# Get exchange information
info = exchange_information(market)

# Get recent trades for BTCUSDT
trades = recent_trades(market, "BTCUSDT", limit=100)

# Get order book for BTCUSDT
book = order_book(market, "BTCUSDT", limit=100)

# Get klines (candlestick) data
klines = klines(market,
    symbol="BTCUSDT",
    interval="1m",
    limit=100
)
```

### Working with Order Book Data

```julia
# Get order book with depth of 10
book = order_book(market, "BTCUSDT", limit=10)

# Access bids and asks
bids = book["bids"]
asks = book["asks"]

# Print best bid and ask
println("Best bid: \$(bids[1][1]) @ \$(bids[1][2])")
println("Best ask: \$(asks[1][1]) @ \$(asks[1][2])")
```
