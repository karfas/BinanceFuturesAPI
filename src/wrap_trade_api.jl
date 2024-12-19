using ..BinanceFuturesAPI: Client, wrap!

# Trade API wrapper functions

# Position margin history
get_position_margin_history(cl::Client, args...; kwargs...) = wrap!(cl, APIClient.get_position_margin_history, cl.t_api, args...; kwargs...)

# Multi-assets margin
multi_assets_margin(cl::Client, args...; kwargs...) =          wrap!(cl, APIClient.multi_assets_margin, cl.t_api, args...; kwargs...)
post_multi_assets_margin(cl::Client, args...; kwargs...) =     wrap!(cl, APIClient.post_multi_assets_margin, cl.t_api, args...; kwargs...)

# Leverage and margin type
change_initial_leverage(cl::Client, args...; kwargs...) =      wrap!(cl, APIClient.post_leverage, cl.t_api, args...; kwargs...)
change_margin_type(cl::Client, args...; kwargs...) =           wrap!(cl, APIClient.post_margin_type, cl.t_api, args...; kwargs...)

# Position margin
modify_isolated_position_margin(cl::Client, args...; kwargs...) = wrap!(cl, APIClient.post_position_margin, cl.t_api, args...; kwargs...)

# Position mode
post_position_side_dual(cl::Client, args...; kwargs...) =      wrap!(cl, APIClient.post_position_side_dual, cl.t_api, args...; kwargs...)


# Export trade API functions
export get_position_margin_history,
       multi_assets_margin, post_multi_assets_margin,
       change_initial_leverage, change_margin_type,
       modify_isolated_position_margin,
       post_position_side_dual
