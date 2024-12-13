using ..BinanceFuturesAPI: Client, signed_kwargs, wrap!

# Trade API wrapper functions

new_order(cl::Client, args...; kwargs...) =                    wrap!(cl, APIClient.new_order, cl.t_api, args...; kwargs...)
modify_order(cl::Client, args...; kwargs...) =                 wrap!(cl, APIClient.modify_order, cl.t_api, args...; kwargs...)
modify_multiple_orders(cl::Client, args...; kwargs...) =       wrap!(cl, APIClient.modify_multiple_orders, cl.t_api, args...; kwargs...)
get_order(cl::Client, args...; kwargs...) =                    wrap!(cl, APIClient.get_order, cl.t_api, args...; kwargs...)
cancel_order(cl::Client, args...; kwargs...) =                 wrap!(cl, APIClient.cancel_order, cl.t_api, args...; kwargs...)
cancel_all_orders(cl::Client, args...; kwargs...) =            wrap!(cl, APIClient.cancel_all_orders, cl.t_api, args...; kwargs...)
auto_cancel_all_orders(cl::Client, args...; kwargs...) =       wrap!(cl, APIClient.auto_cancel_all_orders, cl.t_api, args...; kwargs...)
cancel_multiple_orders(cl::Client, args...; kwargs...) =       wrap!(cl, APIClient.cancel_multiple_orders, cl.t_api, args...; kwargs...)
current_all_open_orders(cl::Client, args...; kwargs...) =      wrap!(cl, APIClient.current_all_open_orders, cl.t_api, args...; kwargs...)
current_open_orders(cl::Client, args...; kwargs...) =          wrap!(cl, APIClient.current_open_orders, cl.t_api, args...; kwargs...)
all_orders(cl::Client, args...; kwargs...) =                   wrap!(cl, APIClient.all_orders, cl.t_api, args...; kwargs...)
balance(cl::Client, args...; kwargs...) =                      wrap!(cl, APIClient.balance, cl.t_api, args...; kwargs...)
account(cl::Client, args...; kwargs...) =                      wrap!(cl, APIClient.account, cl.t_api, args...; kwargs...)
change_initial_leverage(cl::Client, args...; kwargs...) =      wrap!(cl, APIClient.change_initial_leverage, cl.t_api, args...; kwargs...)
change_margin_type(cl::Client, args...; kwargs...) =           wrap!(cl, APIClient.change_margin_type, cl.t_api, args...; kwargs...)
modify_isolated_position_margin(cl::Client, args...; kwargs...) = wrap!(cl, APIClient.modify_isolated_position_margin, cl.t_api, args...; kwargs...)
get_position_margin_change_history(cl::Client, args...; kwargs...) = wrap!(cl, APIClient.get_position_margin_change_history, cl.t_api, args...; kwargs...)
position_risk(cl::Client, args...; kwargs...) =                wrap!(cl, APIClient.position_risk, cl.t_api, args...; kwargs...)
user_trades(cl::Client, args...; kwargs...) =                  wrap!(cl, APIClient.user_trades, cl.t_api, args...; kwargs...)
income_history(cl::Client, args...; kwargs...) =               wrap!(cl, APIClient.income_history, cl.t_api, args...; kwargs...)
leveraged_brackets(cl::Client, args...; kwargs...) =           wrap!(cl, APIClient.leveraged_brackets, cl.t_api, args...; kwargs...)
adl_quantile(cl::Client, args...; kwargs...) =                 wrap!(cl, APIClient.adl_quantile, cl.t_api, args...; kwargs...)
force_orders(cl::Client, args...; kwargs...) =                 wrap!(cl, APIClient.force_orders, cl.t_api, args...; kwargs...)
commission_rate(cl::Client, args...; kwargs...) =              wrap!(cl, APIClient.commission_rate, cl.t_api, args...; kwargs...)
post_position_side_dual(cl::Client, args...; kwargs...) =      wrap!(cl, APIClient.post_position_side_dual, cl.t_api, args...; kwargs...)
multi_assets_margin(cl::Client, args...; kwargs...) =          wrap!(cl, APIClient.multi_assets_margin, cl.t_api, args...; kwargs...)
post_multi_assets_margin(cl::Client, args...; kwargs...) =     wrap!(cl, APIClient.post_multi_assets_margin, cl.t_api, args...; kwargs...)

# Export trade API functions
export new_order, modify_order, modify_multiple_orders, get_order, cancel_order,
       cancel_all_orders, auto_cancel_all_orders, cancel_multiple_orders,
       current_all_open_orders, current_open_orders, all_orders, balance, account,
       change_initial_leverage, change_margin_type, modify_isolated_position_margin,
       get_position_margin_change_history, position_risk, user_trades, income_history,
       leveraged_brackets, adl_quantile, force_orders, commission_rate,
       post_position_side_dual, multi_assets_margin, post_multi_assets_margin
