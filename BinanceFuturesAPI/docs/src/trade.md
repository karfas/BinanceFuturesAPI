# Trade API

The Trade API provides functionality for order management and trading operations.

## Trade API Reference

```@docs
BinanceFuturesAPI.TradeApi
APIClient.new_order_trade
APIClient.query_order
APIClient.cancel_order
APIClient.cancel_all_open_orders
# APIClient.current_open_orders
APIClient.all_orders
APIClient.get_current_multi_assets_mode
APIClient.change_multi_assets_mode
```

## Examples

### Basic Order Management

```julia
using BinanceFuturesAPI

# Create an authenticated client
api_key = "your_api_key"
api_secret = "your_api_secret"
trade = TradeApi("https://fapi.binance.com", api_key, api_secret)

# Place a new limit order
order = new_order(trade,
    symbol="BTCUSDT",
    side="BUY",
    order_type="LIMIT",
    quantity=0.001,
    price=50000.0,
    time_in_force="GTC",
    timestamp=Int64(time() * 1000)
)

# Query the order status
status = query_order(trade,
    symbol="BTCUSDT",
    order_id=order["orderId"],
    timestamp=Int64(time() * 1000)
)

# Cancel the order
result = cancel_order(trade,
    symbol="BTCUSDT",
    order_id=order["orderId"],
    timestamp=Int64(time() * 1000)
)
```

### Managing Multiple Orders

```julia
# Get all open orders
open_orders = current_open_orders(trade,
    symbol="BTCUSDT",
    timestamp=Int64(time() * 1000)
)

# Cancel all open orders for a symbol
result = cancel_all_open_orders(trade,
    symbol="BTCUSDT",
    timestamp=Int64(time() * 1000)
)

# Get order history
history = all_orders(trade,
    symbol="BTCUSDT",
    limit=100,
    timestamp=Int64(time() * 1000)
)
```

### Changing Multi-Assets Mode

Multi-Assets Mode allows you to use multiple assets as collateral for margin. When enabled, all assets in your futures account can be used as collateral.

```julia
using BinanceFuturesAPI

# Create a Trade API client with your API credentials
api = TradeApi("https://fapi.binance.com", "your_api_key", "your_api_secret")

# Enable Multi-Assets Mode
response = change_multi_assets_mode(api,
    multi_assets_margin="true",  # "true" to enable, "false" to disable
    timestamp=Int64(time() * 1000))

# Example response structure:
# {
#   "code": 200,
#   "msg": "success"
# }
```

### Error Handling for Multi-Assets Mode

```julia
try
    response = change_multi_assets_mode(api,
        multi_assets_margin="true",
        timestamp=Int64(time() * 1000))
    println("Multi-Assets Mode changed successfully")
catch e
    if e isa APIError
        println("API Error: $(e.message)")
        if e.code == -4059
            println("Cannot change Multi-Assets Mode under current conditions")
        end
    else
        rethrow(e)
    end
end
```

### Important Notes for Multi-Assets Mode

1. Multi-Assets Mode cannot be changed if you have open positions
2. Multi-Assets Mode affects margin calculations for all positions
3. When enabled, all assets in your futures account can be used as collateral
4. The mode change affects your account's risk level calculation
