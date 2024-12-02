# Account API

The Account API provides functionality for managing your Binance Futures account, including balance queries and account settings.

## Account API Reference

```@docs
BinanceFuturesAPI.AccountApi
APIClient.account_information
APIClient.future_account_balance
APIClient.user_commission_rate_user_data
APIClient.notional_and_leverage_brackets_user_data
APIClient.position_information
APIClient.get_income_history
APIClient.fapi_v1_api_trading_status_get
APIClient.basepath
```

## Examples

### Account Information

```julia
using BinanceFuturesAPI

# Create an authenticated client
api_key = "your_api_key"
api_secret = "your_api_secret"
account = AccountApi("https://fapi.binance.com", api_key, api_secret)

# Get account information
info = account_information(account,
    timestamp=Int64(time() * 1000)
)

# Get account balance
balance = future_account_balance(account,
    timestamp=Int64(time() * 1000)
)
```

### Position Management

```julia
# Get position information
positions = position_information(account,
    timestamp=Int64(time() * 1000)
)

# Get commission rates
commission = user_commission_rate_user_data(account,
    symbol="BTCUSDT",
    timestamp=Int64(time() * 1000)
)

# Get leverage brackets
brackets = notional_and_leverage_brackets_user_data(account,
    symbol="BTCUSDT",
    timestamp=Int64(time() * 1000)
)
```

### Income History

```julia
# Get income history
income = get_income_history(account,
    symbol="BTCUSDT",
    income_type="REALIZED_PNL",
    limit=100,
    timestamp=Int64(time() * 1000)
)
```
