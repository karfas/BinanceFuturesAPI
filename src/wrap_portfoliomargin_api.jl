    # Portfolio Margin API wrapper functions

    portfolio_margin_exchange_info(cl::Client, args...; kwargs...) = wrap!(cl, APIClient.portfolio_margin_exchange_info, cl.p_api, args...; kwargs...)
    portfolio_margin_account_info(cl::Client, args...; kwargs...) =  wrap!(cl, APIClient.portfolio_margin_account_info, cl.p_api, args...; kwargs...)

    # Export portfolio margin API functions
    export portfolio_margin_exchange_info, portfolio_margin_account_info
