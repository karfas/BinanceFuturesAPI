    # Portfolio Margin API wrapper functions
    function portfolio_margin_exchange_info(cl::Client; kwargs...)
        (response, headers) = APIClient.portfolio_margin_exchange_info(cl.pm_api; kwargs...)
        response
    end

    function portfolio_margin_account_info(cl::Client; kwargs...)
        (response, headers) = APIClient.portfolio_margin_account_info(cl.pm_api; kwargs...)
        response
    end

    # Export portfolio margin API functions
    export portfolio_margin_exchange_info, portfolio_margin_account_info
