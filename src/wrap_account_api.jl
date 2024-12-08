    using Dates

    # Account API wrapper functions
    function get_account_info(cl::Client; kwargs...)
        params = signed_kwargs(cl.api_secret; kwargs...)
        response, headers = APIClient.account(cl.a_api; x_mbx_apikey=cl.api_key, params...)
        response
    end

    function get_balance(cl::Client; kwargs...)
        params = signed_kwargs(cl.api_secret; kwargs...)
        response, headers = APIClient.balance(cl.a_api; x_mbx_apikey=cl.api_key, params...)
        response
    end

    function get_position_risk(cl::Client; kwargs...)
        params = signed_kwargs(cl.api_secret; kwargs...)
        response, headers = APIClient.position_risk(cl.a_api; x_mbx_apikey=cl.api_key, params...)
        response
    end

    function get_income_history(cl::Client; kwargs...)
        params = signed_kwargs(cl.api_secret; kwargs...)
        response, headers = APIClient.income(cl.a_api; x_mbx_apikey=cl.api_key, params...)
        response
    end

    function get_leverage_bracket(cl::Client; kwargs...)
        params = signed_kwargs(cl.api_secret; kwargs...)
        response, headers = APIClient.leverage_bracket(cl.a_api; x_mbx_apikey=cl.api_key, params...)
        response
    end

    # Export account API functions
    export get_account_info, get_balance, get_position_risk,
           get_income_history, get_leverage_bracket
