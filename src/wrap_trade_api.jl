    using Dates

    # Trade API wrapper functions
    function new_order(cl::Client; kwargs...)
        params = Dict{String,Any}()
        for (k,v) in kwargs
            params[string(k)] = v
        end
        
        # Add timestamp if not provided
        if !haskey(params, "timestamp")
            params["timestamp"] = Int64(round(datetime2unix(now()) * 1000))
        end
        
        signature = sign_request(cl.api_secret, params)
        (response, headers) = APIClient.new_order(cl.t_api; 
            signature=signature,
            x_mbx_apikey=cl.api_key,
            kwargs...
        )
        response
    end

    function modify_order(cl::Client; kwargs...)
        params = Dict{String,Any}()
        for (k,v) in kwargs
            params[string(k)] = v
        end
        
        # Add timestamp if not provided
        if !haskey(params, "timestamp")
            params["timestamp"] = Int64(round(datetime2unix(now()) * 1000))
        end
        
        signature = sign_request(cl.api_secret, params)
        (response, headers) = APIClient.modify_order(cl.t_api; 
            signature=signature,
            x_mbx_apikey=cl.api_key,
            kwargs...
        )
        response
    end

    function modify_multiple_orders(cl::Client; kwargs...)
        params = Dict{String,Any}()
        for (k,v) in kwargs
            params[string(k)] = v
        end
        
        # Add timestamp if not provided
        if !haskey(params, "timestamp")
            params["timestamp"] = Int64(round(datetime2unix(now()) * 1000))
        end
        
        signature = sign_request(cl.api_secret, params)
        (response, headers) = APIClient.modify_multiple_orders(cl.t_api; 
            signature=signature,
            x_mbx_apikey=cl.api_key,
            kwargs...
        )
        response
    end

    function get_order(cl::Client; kwargs...)
        params = Dict{String,Any}()
        for (k,v) in kwargs
            params[string(k)] = v
        end
        
        # Add timestamp if not provided
        if !haskey(params, "timestamp")
            params["timestamp"] = Int64(round(datetime2unix(now()) * 1000))
        end
        
        signature = sign_request(cl.api_secret, params)
        (response, headers) = APIClient.get_order(cl.t_api; 
            signature=signature,
            x_mbx_apikey=cl.api_key,
            kwargs...
        )
        response
    end

    function cancel_order(cl::Client; kwargs...)
        params = Dict{String,Any}()
        for (k,v) in kwargs
            params[string(k)] = v
        end
        
        # Add timestamp if not provided
        if !haskey(params, "timestamp")
            params["timestamp"] = Int64(round(datetime2unix(now()) * 1000))
        end
        
        signature = sign_request(cl.api_secret, params)
        (response, headers) = APIClient.cancel_order(cl.t_api; 
            signature=signature,
            x_mbx_apikey=cl.api_key,
            kwargs...
        )
        response
    end

    function cancel_all_orders(cl::Client; kwargs...)
        params = Dict{String,Any}()
        for (k,v) in kwargs
            params[string(k)] = v
        end
        
        # Add timestamp if not provided
        if !haskey(params, "timestamp")
            params["timestamp"] = Int64(round(datetime2unix(now()) * 1000))
        end
        
        signature = sign_request(cl.api_secret, params)
        (response, headers) = APIClient.cancel_all_orders(cl.t_api; 
            signature=signature,
            x_mbx_apikey=cl.api_key,
            kwargs...
        )
        response
    end

    function auto_cancel_all_orders(cl::Client; kwargs...)
        params = Dict{String,Any}()
        for (k,v) in kwargs
            params[string(k)] = v
        end
        
        # Add timestamp if not provided
        if !haskey(params, "timestamp")
            params["timestamp"] = Int64(round(datetime2unix(now()) * 1000))
        end
        
        signature = sign_request(cl.api_secret, params)
        (response, headers) = APIClient.auto_cancel_all_orders(cl.t_api; 
            signature=signature,
            x_mbx_apikey=cl.api_key,
            kwargs...
        )
        response
    end

    function cancel_multiple_orders(cl::Client; kwargs...)
        params = Dict{String,Any}()
        for (k,v) in kwargs
            params[string(k)] = v
        end
        
        # Add timestamp if not provided
        if !haskey(params, "timestamp")
            params["timestamp"] = Int64(round(datetime2unix(now()) * 1000))
        end
        
        signature = sign_request(cl.api_secret, params)
        (response, headers) = APIClient.cancel_multiple_orders(cl.t_api; 
            signature=signature,
            x_mbx_apikey=cl.api_key,
            kwargs...
        )
        response
    end

    function current_all_open_orders(cl::Client; kwargs...)
        params = Dict{String,Any}()
        for (k,v) in kwargs
            params[string(k)] = v
        end
        
        # Add timestamp if not provided
        if !haskey(params, "timestamp")
            params["timestamp"] = Int64(round(datetime2unix(now()) * 1000))
        end
        
        signature = sign_request(cl.api_secret, params)
        (response, headers) = APIClient.current_all_open_orders(cl.t_api; 
            signature=signature,
            x_mbx_apikey=cl.api_key,
            kwargs...
        )
        response
    end

    function current_open_orders(cl::Client; kwargs...)
        params = Dict{String,Any}()
        for (k,v) in kwargs
            params[string(k)] = v
        end
        
        # Add timestamp if not provided
        if !haskey(params, "timestamp")
            params["timestamp"] = Int64(round(datetime2unix(now()) * 1000))
        end
        
        signature = sign_request(cl.api_secret, params)
        (response, headers) = APIClient.current_open_orders(cl.t_api; 
            signature=signature,
            x_mbx_apikey=cl.api_key,
            kwargs...
        )
        response
    end

    function all_orders(cl::Client; kwargs...)
        params = Dict{String,Any}()
        for (k,v) in kwargs
            params[string(k)] = v
        end
        
        # Add timestamp if not provided
        if !haskey(params, "timestamp")
            params["timestamp"] = Int64(round(datetime2unix(now()) * 1000))
        end
        
        signature = sign_request(cl.api_secret, params)
        (response, headers) = APIClient.all_orders(cl.t_api; 
            signature=signature,
            x_mbx_apikey=cl.api_key,
            kwargs...
        )
        response
    end

    function balance(cl::Client; kwargs...)
        params = Dict{String,Any}()
        for (k,v) in kwargs
            params[string(k)] = v
        end
        
        # Add timestamp if not provided
        if !haskey(params, "timestamp")
            params["timestamp"] = Int64(round(datetime2unix(now()) * 1000))
        end
        
        signature = sign_request(cl.api_secret, params)
        (response, headers) = APIClient.balance(cl.t_api; 
            signature=signature,
            x_mbx_apikey=cl.api_key,
            kwargs...
        )
        response
    end

    function account(cl::Client; kwargs...)
        params = Dict{String,Any}()
        for (k,v) in kwargs
            params[string(k)] = v
        end
        
        # Add timestamp if not provided
        if !haskey(params, "timestamp")
            params["timestamp"] = Int64(round(datetime2unix(now()) * 1000))
        end
        
        signature = sign_request(cl.api_secret, params)
        (response, headers) = APIClient.account(cl.t_api; 
            signature=signature,
            x_mbx_apikey=cl.api_key,
            kwargs...
        )
        response
    end

    function change_initial_leverage(cl::Client; kwargs...)
        params = Dict{String,Any}()
        for (k,v) in kwargs
            params[string(k)] = v
        end
        
        # Add timestamp if not provided
        if !haskey(params, "timestamp")
            params["timestamp"] = Int64(round(datetime2unix(now()) * 1000))
        end
        
        signature = sign_request(cl.api_secret, params)
        (response, headers) = APIClient.change_initial_leverage(cl.t_api; 
            signature=signature,
            x_mbx_apikey=cl.api_key,
            kwargs...
        )
        response
    end

    function change_margin_type(cl::Client; kwargs...)
        params = Dict{String,Any}()
        for (k,v) in kwargs
            params[string(k)] = v
        end
        
        # Add timestamp if not provided
        if !haskey(params, "timestamp")
            params["timestamp"] = Int64(round(datetime2unix(now()) * 1000))
        end
        
        signature = sign_request(cl.api_secret, params)
        (response, headers) = APIClient.change_margin_type(cl.t_api; 
            signature=signature,
            x_mbx_apikey=cl.api_key,
            kwargs...
        )
        response
    end

    function modify_isolated_position_margin(cl::Client; kwargs...)
        params = Dict{String,Any}()
        for (k,v) in kwargs
            params[string(k)] = v
        end
        
        # Add timestamp if not provided
        if !haskey(params, "timestamp")
            params["timestamp"] = Int64(round(datetime2unix(now()) * 1000))
        end
        
        signature = sign_request(cl.api_secret, params)
        (response, headers) = APIClient.modify_isolated_position_margin(cl.t_api; 
            signature=signature,
            x_mbx_apikey=cl.api_key,
            kwargs...
        )
        response
    end

    function get_position_margin_change_history(cl::Client; kwargs...)
        params = Dict{String,Any}()
        for (k,v) in kwargs
            params[string(k)] = v
        end
        
        # Add timestamp if not provided
        if !haskey(params, "timestamp")
            params["timestamp"] = Int64(round(datetime2unix(now()) * 1000))
        end
        
        signature = sign_request(cl.api_secret, params)
        (response, headers) = APIClient.get_position_margin_change_history(cl.t_api; 
            signature=signature,
            x_mbx_apikey=cl.api_key,
            kwargs...
        )
        response
    end

    function position_risk(cl::Client; kwargs...)
        params = Dict{String,Any}()
        for (k,v) in kwargs
            params[string(k)] = v
        end
        
        # Add timestamp if not provided
        if !haskey(params, "timestamp")
            params["timestamp"] = Int64(round(datetime2unix(now()) * 1000))
        end
        
        signature = sign_request(cl.api_secret, params)
        (response, headers) = APIClient.position_risk(cl.t_api; 
            signature=signature,
            x_mbx_apikey=cl.api_key,
            kwargs...
        )
        response
    end

    function user_trades(cl::Client; kwargs...)
        params = Dict{String,Any}()
        for (k,v) in kwargs
            params[string(k)] = v
        end
        
        # Add timestamp if not provided
        if !haskey(params, "timestamp")
            params["timestamp"] = Int64(round(datetime2unix(now()) * 1000))
        end
        
        signature = sign_request(cl.api_secret, params)
        (response, headers) = APIClient.user_trades(cl.t_api; 
            signature=signature,
            x_mbx_apikey=cl.api_key,
            kwargs...
        )
        response
    end

    function income_history(cl::Client; kwargs...)
        params = Dict{String,Any}()
        for (k,v) in kwargs
            params[string(k)] = v
        end
        
        # Add timestamp if not provided
        if !haskey(params, "timestamp")
            params["timestamp"] = Int64(round(datetime2unix(now()) * 1000))
        end
        
        signature = sign_request(cl.api_secret, params)
        (response, headers) = APIClient.income_history(cl.t_api; 
            signature=signature,
            x_mbx_apikey=cl.api_key,
            kwargs...
        )
        response
    end

    function leveraged_brackets(cl::Client; kwargs...)
        params = Dict{String,Any}()
        for (k,v) in kwargs
            params[string(k)] = v
        end
        
        # Add timestamp if not provided
        if !haskey(params, "timestamp")
            params["timestamp"] = Int64(round(datetime2unix(now()) * 1000))
        end
        
        signature = sign_request(cl.api_secret, params)
        (response, headers) = APIClient.leveraged_brackets(cl.t_api; 
            signature=signature,
            x_mbx_apikey=cl.api_key,
            kwargs...
        )
        response
    end

    function adl_quantile(cl::Client; kwargs...)
        params = Dict{String,Any}()
        for (k,v) in kwargs
            params[string(k)] = v
        end
        
        # Add timestamp if not provided
        if !haskey(params, "timestamp")
            params["timestamp"] = Int64(round(datetime2unix(now()) * 1000))
        end
        
        signature = sign_request(cl.api_secret, params)
        (response, headers) = APIClient.adl_quantile(cl.t_api; 
            signature=signature,
            x_mbx_apikey=cl.api_key,
            kwargs...
        )
        response
    end

    function force_orders(cl::Client; kwargs...)
        params = Dict{String,Any}()
        for (k,v) in kwargs
            params[string(k)] = v
        end
        
        # Add timestamp if not provided
        if !haskey(params, "timestamp")
            params["timestamp"] = Int64(round(datetime2unix(now()) * 1000))
        end
        
        signature = sign_request(cl.api_secret, params)
        (response, headers) = APIClient.force_orders(cl.t_api; 
            signature=signature,
            x_mbx_apikey=cl.api_key,
            kwargs...
        )
        response
    end

    function commission_rate(cl::Client; kwargs...)
        params = Dict{String,Any}()
        for (k,v) in kwargs
            params[string(k)] = v
        end
        
        # Add timestamp if not provided
        if !haskey(params, "timestamp")
            params["timestamp"] = Int64(round(datetime2unix(now()) * 1000))
        end
        
        signature = sign_request(cl.api_secret, params)
        (response, headers) = APIClient.commission_rate(cl.t_api; 
            signature=signature,
            x_mbx_apikey=cl.api_key,
            kwargs...
        )
        response
    end

    function get_position_mode(cl::Client; kwargs...)
        params = Dict{String,Any}()
        for (k,v) in kwargs
            params[string(k)] = v
        end
        
        # Add timestamp if not provided
        if !haskey(params, "timestamp")
            params["timestamp"] = Int64(round(datetime2unix(now()) * 1000))
        end
        
        signature = sign_request(cl.api_secret, params)
        (response, headers) = APIClient.get_position_side_dual(cl.t_api; 
            signature=signature,
            x_mbx_apikey=cl.api_key,
            kwargs...
        )
        response
    end

    function change_position_mode(cl::Client; kwargs...)
        params = Dict{String,Any}()
        for (k,v) in kwargs
            params[string(k)] = v
        end
        
        # Add timestamp if not provided
        if !haskey(params, "timestamp")
            params["timestamp"] = Int64(round(datetime2unix(now()) * 1000))
        end
        
        signature = sign_request(cl.api_secret, params)
        (response, headers) = APIClient.post_position_side_dual(cl.t_api; 
            signature=signature,
            x_mbx_apikey=cl.api_key,
            kwargs...
        )
        response
    end

    function get_multi_assets_mode(cl::Client; kwargs...)
        params = Dict{String,Any}()
        for (k,v) in kwargs
            params[string(k)] = v
        end
        
        # Add timestamp if not provided
        if !haskey(params, "timestamp")
            params["timestamp"] = Int64(round(datetime2unix(now()) * 1000))
        end
        
        signature = sign_request(cl.api_secret, params)
        (response, headers) = APIClient.multi_assets_margin(cl.t_api; 
            signature=signature,
            x_mbx_apikey=cl.api_key,
            kwargs...
        )
        response
    end

    function change_multi_assets_mode(cl::Client; kwargs...)
        params = Dict{String,Any}()
        for (k,v) in kwargs
            params[string(k)] = v
        end
        
        # Add timestamp if not provided
        if !haskey(params, "timestamp")
            params["timestamp"] = Int64(round(datetime2unix(now()) * 1000))
        end
        
        signature = sign_request(cl.api_secret, params)
        (response, headers) = APIClient.post_multi_assets_margin(cl.t_api; 
            signature=signature,
            x_mbx_apikey=cl.api_key,
            kwargs...
        )
        response
    end

    function get_user_trades(cl::Client; kwargs...)
        params = signed_kwargs(cl.api_secret; kwargs...)
        response, headers = APIClient.user_trades(cl.t_api; x_mbx_apikey=cl.api_key, params...)
        response
    end

    # Export trade API functions
    export new_order, modify_order, modify_multiple_orders, get_order, cancel_order,
           cancel_all_orders, auto_cancel_all_orders, cancel_multiple_orders,
           current_all_open_orders, current_open_orders, get_position_mode, change_position_mode,
           get_multi_assets_mode, change_multi_assets_mode, all_orders, balance, account,
           change_initial_leverage, change_margin_type, modify_isolated_position_margin,
           get_position_margin_change_history, position_risk, user_trades, income_history,
           leveraged_brackets, adl_quantile, force_orders, commission_rate, get_user_trades