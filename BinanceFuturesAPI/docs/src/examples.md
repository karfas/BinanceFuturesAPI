# Examples

## Market Data Examples

### Getting Exchange Information

```julia
using BinanceFuturesAPI

# Create a Market API client
client = MarketApi("https://fapi.binance.com")

# Get exchange information for all symbols
info = client.exchangeInformation()

# Get information for a specific symbol
btc_info = client.exchangeInformation(symbol="BTCUSDT")
```

### Fetching Klines Data

```julia
# Get 1-minute klines for BTCUSDT
klines = client.klines(
    "BTCUSDT",
    interval="1m",  # Available intervals: 1m, 3m, 5m, 15m, 30m, 1h, 2h, 4h, 6h, 8h, 12h, 1d, 3d, 1w, 1M
    limit=100       # Number of klines to return (max 1500)
)

# Get klines for a specific time range
klines = client.klines(
    "BTCUSDT",
    interval="1h",
    startTime=1609459200000,  # Unix timestamp in milliseconds
    endTime=1609545600000
)
```

### Getting Order Book Data

```julia
# Get order book with default depth (100)
orderbook = client.orderBook("BTCUSDT")

# Get order book with specific depth
orderbook = client.orderBook("BTCUSDT", limit=1000)  # Available limits: [5, 10, 20, 50, 100, 500, 1000]
```

### Fetching Recent Trades

```julia
# Get recent trades
trades = client.recentTrades("BTCUSDT", limit=100)

# Get historical trades (requires API key)
trades = client.historicalTrades("BTCUSDT", limit=100)
```

## Error Handling

```julia
using BinanceFuturesAPI
using HTTP

try
    client = MarketApi("https://fapi.binance.com")
    info = client.exchangeInformation("INVALID_SYMBOL")
catch e
    if e isa HTTP.ExceptionRequest.StatusError
        println("API Error: ", e.response.body)
    else
        rethrow(e)
    end
end
```
