    # Market API wrapper functions

    agg_trades(cl::Client, args...; kwargs...) =            wrap!(cl, APIClient.agg_trades, cl.m_api, args...; kwargs...)
    asset_index(cl::Client, args...; kwargs...) =           wrap!(cl, APIClient.asset_index, cl.m_api, args...; kwargs...)
    basis(cl::Client, args...; kwargs...) =                 wrap!(cl, APIClient.basis, cl.m_api, args...; kwargs...)
    book_ticker(cl::Client, args...; kwargs...) =           wrap!(cl, APIClient.book_ticker, cl.m_api, args...; kwargs...)
    constituents(cl::Client, args...; kwargs...) =          wrap!(cl, APIClient.constituents, cl.m_api, args...; kwargs...)
    continuous_klines(cl::Client, args...; kwargs...) =     wrap!(cl, APIClient.continuous_klines, cl.m_api, args...; kwargs...)
    depth(cl::Client, args...; kwargs...) =                 wrap!(cl, APIClient.depth, cl.m_api, args...; kwargs...)
    exchange_info(cl::Client, args...; kwargs...) =         wrap!(cl, APIClient.exchange_info, cl.m_api, args...; kwargs...)
    funding_rate(cl::Client, args...; kwargs...) =          wrap!(cl, APIClient.funding_rate, cl.m_api, args...; kwargs...)
    global_long_short_account_ratio(cl::Client, args...; kwargs...) = wrap!(cl, APIClient.global_long_short_account_ratio, cl.m_api, args...; kwargs...)
    historical_trades(cl::Client, args...; kwargs...) =     wrap!(cl, APIClient.historical_trades, cl.m_api, args...; kwargs...)
    index_info(cl::Client, args...; kwargs...) =            wrap!(cl, APIClient.index_info, cl.m_api, args...; kwargs...)
    index_price_klines(cl::Client, args...; kwargs...) =    wrap!(cl, APIClient.index_price_klines, cl.m_api, args...; kwargs...)
    klines(cl::Client, args...; kwargs...) =                wrap!(cl, APIClient.klines, cl.m_api, args...; kwargs...)
    lvt_klines(cl::Client, args...; kwargs...) =            wrap!(cl, APIClient.lvt_klines, cl.m_api, args...; kwargs...)
    mark_price_klines(cl::Client, args...; kwargs...) =     wrap!(cl, APIClient.mark_price_klines, cl.m_api, args...; kwargs...)
    open_interest(cl::Client, args...; kwargs...) =         wrap!(cl, APIClient.open_interest, cl.m_api, args...; kwargs...)
    ping(cl::Client, args...; kwargs...) =                  wrap!(cl, APIClient.ping, cl.m_api, args...; kwargs...)
    price(cl::Client, args...; kwargs...) =                 wrap!(cl, APIClient.price, cl.m_api, args...; kwargs...)
    ticker24hr(cl::Client, args...; kwargs...) =            wrap!(cl, APIClient.ticker24hr, cl.m_api, args...; kwargs...)
    ticker_price(cl::Client, args...; kwargs...) =          wrap!(cl, APIClient.ticker_price, cl.m_api, args...; kwargs...)
    server_time(cl::Client, args...; kwargs...) =           wrap!(cl, APIClient.server_time, cl.m_api, args...; kwargs...)
    top_long_short_account_ratio(cl::Client, args...; kwargs...) = wrap!(cl, APIClient.top_long_short_account_ratio, cl.m_api, args...; kwargs...)
    top_long_short_position_ratio(cl::Client, args...; kwargs...) = wrap!(cl, APIClient.top_long_short_position_ratio, cl.m_api, args...; kwargs...)
    trades(cl::Client, args...; kwargs...) =                wrap!(cl, APIClient.trades, cl.m_api, args...; kwargs...)
    ui_klines(cl::Client, args...; kwargs...) =             wrap!(cl, APIClient.ui_klines, cl.m_api, args...; kwargs...)

    # Export market API functions
    export agg_trades, asset_index, basis, book_ticker, constituents, continuous_klines,
           depth, exchange_info, funding_rate, global_long_short_account_ratio, historical_trades,
           index_info, index_price_klines, klines, lvt_klines, mark_price_klines, open_interest,
           ping, price, ticker24hr, ticker_price, server_time, top_long_short_account_ratio,
           top_long_short_position_ratio, trades, ui_klines
