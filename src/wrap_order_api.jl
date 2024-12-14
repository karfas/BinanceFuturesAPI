using ..BinanceFuturesAPI: Client, signed_kwargs, wrap!

# Order API wrapper functions
force_orders(cl::Client, args...; kwargs...) =                 wrap!(cl, APIClient.force_orders, cl.o_api, args...; kwargs...)
download_transactions_asyn(cl::Client, args...; kwargs...) =   wrap!(cl, APIClient.download_transactions_asyn, cl.o_api, args...; kwargs...)

# Export order API functions
export force_orders, download_transactions_asyn
