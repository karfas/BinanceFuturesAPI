    using Dates

# Account API wrapper functions

account(cl::Client, args...; kwargs...) =                  wrap!(cl, APIClient.account, cl.a_api, args...; kwargs...)
adl_quantile(cl::Client, args...; kwargs...) =             wrap!(cl, APIClient.adl_quantile, cl.a_api, args...; kwargs...)
balance(cl::Client, args...; kwargs...) =                  wrap!(cl, APIClient.balance, cl.a_api, args...; kwargs...)
commission_rate(cl::Client, args...; kwargs...) =          wrap!(cl, APIClient.commission_rate, cl.a_api, args...; kwargs...)
api_trading_status(cl::Client, args...; kwargs...) =       wrap!(cl, APIClient.api_trading_status, cl.a_api, args...; kwargs...)
income(cl::Client, args...; kwargs...) =                   wrap!(cl, APIClient.income, cl.a_api, args...; kwargs...)
leverage_bracket(cl::Client, args...; kwargs...) =         wrap!(cl, APIClient.leverage_bracket, cl.a_api, args...; kwargs...)
position_risk(cl::Client, args...; kwargs...) =            wrap!(cl, APIClient.position_risk, cl.a_api, args...; kwargs...)
user_trades(cl::Client, args...; kwargs...) =              wrap!(cl, APIClient.user_trades, cl.a_api, args...; kwargs...)

# Export account API functions
export account, adl_quantile, balance, commission_rate, api_trading_status,
       income, leverage_bracket, position_risk, user_trades
