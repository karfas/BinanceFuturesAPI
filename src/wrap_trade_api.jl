using ..BinanceFuturesAPI: Client, wrap!

# Trade API wrapper functions

# Multi-assets margin mode
multi_assets_margin(cl::Client, args...; kwargs...) =          wrap!(cl, APIClient.multi_assets_margin, cl.t_api, args...; kwargs...)
post_multi_assets_margin(cl::Client, args...; kwargs...) =     wrap!(cl, APIClient.post_multi_assets_margin, cl.t_api, args...; kwargs...)

# Leverage and margin type
post_leverage(cl::Client, args...; kwargs...) =                wrap!(cl, APIClient.post_leverage, cl.t_api, args...; kwargs...)
post_margin_type(cl::Client, args...; kwargs...) =             wrap!(cl, APIClient.post_margin_type, cl.t_api, args...; kwargs...)

# Position margin
post_position_margin(cl::Client, args...; kwargs...) =         wrap!(cl, APIClient.post_position_margin, cl.t_api, args...; kwargs...)
get_position_margin_history(cl::Client, args...; kwargs...) =  wrap!(cl, APIClient.get_position_margin_history, cl.t_api, args...; kwargs...)

# Position mode
post_position_side_dual(cl::Client, args...; kwargs...) =      wrap!(cl, APIClient.post_position_side_dual, cl.t_api, args...; kwargs...)

# Export trade API functions
export multi_assets_margin, post_multi_assets_margin,
       post_leverage, post_margin_type,
       post_position_margin, get_position_margin_history,
       post_position_side_dual
