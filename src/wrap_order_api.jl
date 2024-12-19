using ..BinanceFuturesAPI: Client, wrap!

# Order API wrapper functions
force_orders(cl::Client, args...; kwargs...) =                 wrap!(cl, APIClient.force_orders, cl.o_api, args...; kwargs...)
download_transactions_asyn(cl::Client, args...; kwargs...) =   wrap!(cl, APIClient.download_transactions_asyn, cl.o_api, args...; kwargs...)
post_order(cl::Client, args...; kwargs...) =                   wrap!(cl, APIClient.post_order, cl.o_api, args...; kwargs...)
modify_order(cl::Client, args...; kwargs...) =                 wrap!(cl, APIClient.modify_order, cl.o_api, args...; kwargs...)
modify_multiple_orders(cl::Client, args...; kwargs...) =       wrap!(cl, APIClient.modify_multiple_orders, cl.o_api, args...; kwargs...)
get_order(cl::Client, args...; kwargs...) =                    wrap!(cl, APIClient.get_order, cl.o_api, args...; kwargs...)
cancel_order(cl::Client, args...; kwargs...) =                 wrap!(cl, APIClient.cancel_order, cl.o_api, args...; kwargs...)
delete_all_open_orders(cl::Client, args...; kwargs...) =       wrap!(cl, APIClient.delete_all_open_orders, cl.o_api, args...; kwargs...)
auto_cancel_all_orders(cl::Client, args...; kwargs...) =       wrap!(cl, APIClient.auto_cancel_all_orders, cl.o_api, args...; kwargs...)
cancel_multiple_orders(cl::Client, args...; kwargs...) =       wrap!(cl, APIClient.cancel_multiple_orders, cl.o_api, args...; kwargs...)
get_open_orders(cl::Client, args...; kwargs...) =              wrap!(cl, APIClient.get_open_orders, cl.o_api, args...; kwargs...)
all_orders(cl::Client, args...; kwargs...) =                   wrap!(cl, APIClient.all_orders, cl.o_api, args...; kwargs...)

# Export order API functions
export force_orders, download_transactions_asyn,
       post_order, modify_order, modify_multiple_orders,
       get_order, cancel_order, delete_all_open_orders,
       auto_cancel_all_orders, cancel_multiple_orders,
       get_open_orders, all_orders