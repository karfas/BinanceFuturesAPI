    using Dates

    # Account API wrapper functions

    account_trades(cl::Client, args...; kwargs...) =           wrap!(cl, APIClient.account_trades, cl.a_api, args...; kwargs...)
    account(cl::Client, args...; kwargs...) =                  wrap!(cl, APIClient.account, cl.a_api, args...; kwargs...)
    balance(cl::Client, args...; kwargs...) =                  wrap!(cl, APIClient.balance, cl.a_api, args...; kwargs...)
    position_risk(cl::Client, args...; kwargs...) =            wrap!(cl, APIClient.position_risk, cl.a_api, args...; kwargs...)
    user_trades(cl::Client, args...; kwargs...) =              wrap!(cl, APIClient.user_trades, cl.a_api, args...; kwargs...)
    income(cl::Client, args...; kwargs...) =                   wrap!(cl, APIClient.income, cl.a_api, args...; kwargs...)
    leverage_bracket(cl::Client, args...; kwargs...) =         wrap!(cl, APIClient.leverage_bracket, cl.a_api, args...; kwargs...)
    force_orders(cl::Client, args...; kwargs...) =             wrap!(cl, APIClient.force_orders, cl.a_api, args...; kwargs...)
    api_trading_status(cl::Client, args...; kwargs...) =       wrap!(cl, APIClient.fapi_v1_api_trading_status_get, cl.a_api, args...; kwargs...)
    commission_rate(cl::Client, args...; kwargs...) =          wrap!(cl, APIClient.commission_rate, cl.a_api, args...; kwargs...)
    download_transactions_asyn(cl::Client, args...; kwargs...) = wrap!(cl, APIClient.download_transactions_asyn, cl.a_api, args...; kwargs...)
    futures_account_user_commission_rate(cl::Client, args...; kwargs...) = wrap!(cl, APIClient.futures_account_user_commission_rate, cl.a_api, args...; kwargs...)

    # Export account API functions
    export account_trades, account, balance, position_risk, user_trades,
           income, leverage_bracket, force_orders, api_trading_status,
           commission_rate, download_transactions_asyn, futures_account_user_commission_rate
