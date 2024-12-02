# Portfolio Margin API

The Portfolio Margin API provides functionality for managing portfolio margin accounts on Binance Futures. Portfolio margin mode allows for cross-margin benefits across different trading pairs.

## Portfolio Margin API Reference

```@docs
BinanceFuturesAPI.PortfolioMarginApi
APIClient.portfolio_margin_account_information
```

## Examples

### Portfolio Margin Account Information

```julia
using BinanceFuturesAPI

# Create a PortfolioMarginApi client with your API credentials
api = PortfolioMarginApi("https://fapi.binance.com", "your_api_key", "your_api_secret")

# Get portfolio margin account information
account_info = portfolio_margin_account_information(api, 
    timestamp=Int64(time() * 1000))

# Example response structure:
# {
#   "feeTier": 0,                      # Account commission tier
#   "canTrade": true,                  # If can trade
#   "canDeposit": true,                # If can deposit
#   "canWithdraw": true,               # If can withdraw
#   "updateTime": 0,
#   "totalWalletBalance": "23.72469206", # Total wallet balance
#   "totalUnrealizedProfit": "0.00000000",  # Total unrealized profit
#   "totalMarginBalance": "23.72469206",     # Total margin balance
#   "totalPositionInitialMargin": "0.00000000",  # Total position initial margin
#   "totalOpenOrderInitialMargin": "0.00000000", # Total open order initial margin
#   "assets": [
#     {
#       "asset": "USDT",
#       "walletBalance": "23.72469206",  # Wallet balance
#       "unrealizedProfit": "0.00000000",  # Unrealized profit
#       "marginBalance": "23.72469206",    # Margin balance
#       "maintMargin": "0.00000000",       # Maintenance margin
#       "initialMargin": "0.00000000",     # Initial margin
#       "positionInitialMargin": "0.00000000",    # Position initial margin
#       "openOrderInitialMargin": "0.00000000",   # Open order initial margin
#       "maxWithdrawAmount": "23.72469206"        # Maximum amount for withdrawal
#     }
#   ],
#   "positions": []                    # Position information
# }
```

## Best Practices

1. **Account Monitoring**
   ```julia
   function monitor_portfolio_margin_health(api::PortfolioMarginApi)
       account = portfolio_margin_account_information(api, 
           timestamp=Int64(time() * 1000))
       
       margin_level = parse(Float64, account.totalMarginBalance) /
                     parse(Float64, account.totalInitialMargin)
                     
       println("Current margin level: $margin_level")
       
       # Alert if margin level is below 1.5
       if margin_level < 1.5
           println("WARNING: Low margin level!")
       end
   end
   ```

2. **Error Handling**
   ```julia
   try
       account = portfolio_margin_account_information(api, 
           timestamp=Int64(time() * 1000))
   catch e
       if e isa APIError
           println("API Error: $(e.message)")
           if e.code == -2011
               println("Portfolio Margin Account not activated")
           end
       else
           rethrow(e)
       end
   end
   ```

## Portfolio Margin Requirements

1. **Eligibility**
   - Minimum account balance requirement
   - Trading history requirements
   - Risk assessment criteria

2. **Risk Management**
   - Monitor margin levels regularly
   - Maintain sufficient collateral
   - Understand cross-margin benefits and risks

3. **Important Notes**
   - Portfolio margin mode cannot be disabled once enabled
   - Some trading pairs may have different margin requirements
   - Collateral rates may vary by asset
