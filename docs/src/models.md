# Models

This section documents the data models used in BinanceFuturesAPI.jl.

## Response Types

```@docs
APIClient.ExchangeInfoResponse
# APIClient.KlinesResponseInner
APIClient.HistoricalTradesResponseInner
APIClient.AggregateTradesResponseInner
APIClient.TickerPriceChangeResponseInner
APIClient.SymbolPriceTickerResponseInner
APIClient.BookTickerResponseInner
APIClient.OrderResponse
APIClient.AllOrdersResponseInner
APIClient.UserTradesResponseInner
APIClient.PositionRiskResponseInner
APIClient.PositionMarginResponse
APIClient.PositionModeResponse
APIClient.LeverageResponse
APIClient.ExchangeInfoResponseSymbolsInner
APIClient.PositionMarginHistoryResponseInner
```

## Model Examples

### Working with Exchange Info

```julia
using BinanceFuturesAPI

market = MarketApi("https://fapi.binance.com")
info = exchange_information(market)

# Access exchange info fields
for symbol in info.symbols
    println("Symbol: \$(symbol.symbol)")
    println("Base Asset: \$(symbol.baseAsset)")
    println("Quote Asset: \$(symbol.quoteAsset)")
    println("Status: \$(symbol.status)")
    println()
end
```

### Working with Klines

```julia
# Get klines data
klines = klines(market,
    symbol="BTCUSDT",
    interval="1m",
    limit=100
)

# Process kline data
for kline in klines
    open_time = kline[1]
    open = parse(Float64, kline[2])
    high = parse(Float64, kline[3])
    low = parse(Float64, kline[4])
    close = parse(Float64, kline[5])
    volume = parse(Float64, kline[6])

    println("Time: \$open_time")
    println("OHLCV: \$open, \$high, \$low, \$close, \$volume")
    println()
end
```

### Working with Orders

```julia
# Create an order
trade = TradeApi("https://fapi.binance.com", "api_key", "api_secret")
order = new_order(trade,
    symbol="BTCUSDT",
    side="BUY",
    order_type="LIMIT",
    quantity=0.001,
    price=50000.0,
    time_in_force="GTC",
    timestamp=Int64(time() * 1000)
)

# Access order fields
println("Order ID: \$(order.orderId)")
println("Symbol: \$(order.symbol)")
println("Status: \$(order.status)")
println("Price: \$(order.price)")
println("Original Quantity: \$(order.origQty)")
```
