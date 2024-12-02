# Examples

This section provides comprehensive examples of using BinanceFuturesAPI.jl.

## Market Data Examples

### Getting Market Overview

```julia
using BinanceFuturesAPI

# Create a Market API client
market = MarketApi("https://fapi.binance.com")

# Get exchange information
info = exchange_information(market)

# Get recent trades
trades = recent_trades(market, "BTCUSDT", limit=100)

# Get order book
book = order_book(market, "BTCUSDT", limit=10)

# Get 24hr ticker
ticker = ticker_24hr(market, symbol="BTCUSDT")
```

### Working with Klines Data

```julia
# Get klines (candlestick) data
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
end
```

## Trading Examples

### Basic Order Management

```julia
using BinanceFuturesAPI

# Create an authenticated client
api_key = "your_api_key"
api_secret = "your_api_secret"
trade = TradeApi("https://fapi.binance.com", api_key, api_secret)

# Place a limit order
order = new_order(trade,
    symbol="BTCUSDT",
    side="BUY",
    order_type="LIMIT",
    quantity=0.001,
    price=50000.0,
    time_in_force="GTC",
    timestamp=Int64(time() * 1000)
)

# Query the order
status = query_order(trade,
    symbol="BTCUSDT",
    order_id=order["orderId"],
    timestamp=Int64(time() * 1000)
)

# Cancel the order if needed
if status["status"] != "FILLED"
    result = cancel_order(trade,
        symbol="BTCUSDT",
        order_id=order["orderId"],
        timestamp=Int64(time() * 1000)
    )
end
```

## Account Management Examples

### Account Overview

```julia
using BinanceFuturesAPI

# Create an authenticated client
account = AccountApi("https://fapi.binance.com", "api_key", "api_secret")

# Get account information
info = account_information(account,
    timestamp=Int64(time() * 1000)
)

# Get account balance
balance = future_account_balance(account,
    timestamp=Int64(time() * 1000)
)

# Print assets and their balances
for asset in balance
    println("Asset: \$(asset["asset"])")
    println("Wallet Balance: \$(asset["balance"])")
    println("Unrealized PNL: \$(asset["unrealizedProfit"])")
    println()
end
```

### Position Management

```julia
# Get position information
positions = position_information(account,
    timestamp=Int64(time() * 1000)
)

# Print active positions
for position in positions
    if parse(Float64, position["positionAmt"]) != 0
        println("Symbol: \$(position["symbol"])")
        println("Position Size: \$(position["positionAmt"])")
        println("Entry Price: \$(position["entryPrice"])")
        println("Unrealized PNL: \$(position["unrealizedProfit"])")
        println()
    end
end
```

## Error Handling Examples

```julia
using BinanceFuturesAPI

function safe_order_placement(trade::TradeApi, symbol::String, side::String, quantity::Float64, price::Float64)
    try
        timestamp = Int64(time() * 1000)
        order = new_order(trade,
            symbol=symbol,
            side=side,
            order_type="LIMIT",
            quantity=quantity,
            price=price,
            time_in_force="GTC",
            timestamp=timestamp
        )
        return order
    catch e
        if isa(e, ErrorException)
            println("Error placing order: \$(e.msg)")
        else
            println("Unexpected error: \$e")
        end
        return nothing
    end
end
```
