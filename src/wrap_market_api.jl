    # Market API wrapper functions
    function agg_trades(cl::Client, symbol::String; kwargs...)
        (response, headers) = APIClient.agg_trades(cl.m_api, symbol; kwargs...)
        response
    end

    function asset_index(cl::Client; kwargs...)
        (response, headers) = APIClient.asset_index(cl.m_api; kwargs...)
        response
    end

    function basis(cl::Client; kwargs...)
        (response, headers) = APIClient.basis(cl.m_api; kwargs...)
        response
    end

    function book_ticker(cl::Client; kwargs...)
        (response, headers) = APIClient.book_ticker(cl.m_api; kwargs...)
        response.value
    end

    function constituents(cl::Client; kwargs...)
        (response, headers) = APIClient.constituents(cl.m_api; kwargs...)
        response
    end

    function continuous_klines(cl::Client; kwargs...)
        (response, headers) = APIClient.continuous_klines(cl.m_api; kwargs...)
        response
    end

    function depth(cl::Client, symbol::String; kwargs...)
        (response, headers) = APIClient.depth(cl.m_api, symbol; kwargs...)
        response
    end

    function exchange_info(cl::Client; kwargs...)
        (response, headers) = APIClient.exchange_info(cl.m_api; kwargs...)
        response
    end

    function funding_rate(cl::Client; kwargs...)
        (response, headers) = APIClient.funding_rate(cl.m_api; kwargs...)
        response
    end

    function global_long_short_account_ratio(cl::Client; kwargs...)
        (response, headers) = APIClient.global_long_short_account_ratio(cl.m_api; kwargs...)
        response
    end

    function historical_trades(cl::Client, symbol::String; kwargs...)
        (response, headers) = APIClient.historical_trades(cl.m_api, symbol; kwargs...)
        response
    end

    function index_info(cl::Client; kwargs...)
        (response, headers) = APIClient.index_info(cl.m_api; kwargs...)
        response
    end

    function index_price_klines(cl::Client; kwargs...)
        (response, headers) = APIClient.index_price_klines(cl.m_api; kwargs...)
        response
    end

    function klines(cl::Client, symbol::String, interval::String; kwargs...)
        (response, headers) = APIClient.klines(cl.m_api, symbol, interval; kwargs...)
        response
    end

    function lvt_klines(cl::Client; kwargs...)
        (response, headers) = APIClient.lvt_klines(cl.m_api; kwargs...)
        response
    end

    function mark_price_klines(cl::Client; kwargs...)
        (response, headers) = APIClient.mark_price_klines(cl.m_api; kwargs...)
        response
    end

    function open_interest(cl::Client; kwargs...)
        (response, headers) = APIClient.open_interest(cl.m_api; kwargs...)
        response
    end

    function ping(cl::Client; kwargs...)
        (response, headers) = APIClient.ping(cl.m_api; kwargs...)
        response
    end

    function price(cl::Client; kwargs...)
        (response, headers) = APIClient.price(cl.m_api; kwargs...)
        response
    end

    function ticker24hr(cl::Client; kwargs...)
        (response, headers) = APIClient.ticker24hr(cl.m_api; kwargs...)
        response.value
    end

    function ticker_price(cl::Client; kwargs...)
        (response, headers) = APIClient.ticker_price(cl.m_api; kwargs...)
        response
    end

    function server_time(cl::Client; kwargs...)
        (response, headers) = APIClient.server_time(cl.m_api; kwargs...)
        response
    end

    function top_long_short_account_ratio(cl::Client; kwargs...)
        (response, headers) = APIClient.top_long_short_account_ratio(cl.m_api; kwargs...)
        response
    end

    function top_long_short_position_ratio(cl::Client; kwargs...)
        (response, headers) = APIClient.top_long_short_position_ratio(cl.m_api; kwargs...)
        response
    end

    function trades(cl::Client, symbol::String; kwargs...)
        (response, headers) = APIClient.trades(cl.m_api, symbol; kwargs...)
        response
    end

    function ui_klines(cl::Client; kwargs...)
        (response, headers) = APIClient.ui_klines(cl.m_api; kwargs...)
        response
    end

    # Export market API functions

    export agg_trades, asset_index, basis, book_ticker, constituents, continuous_klines,
           depth, exchange_info, funding_rate, global_long_short_account_ratio, historical_trades,
           index_info, index_price_klines, klines, lvt_klines, mark_price_klines, open_interest,
           ping, price, ticker24hr, ticker_price, server_time, top_long_short_account_ratio,
           top_long_short_position_ratio, trades, ui_klines

