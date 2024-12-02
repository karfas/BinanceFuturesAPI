using Test
using BinanceFuturesAPI
using Dates

@testset "MarketApi Tests" begin
    # Create a market API client
    market = MarketApi("https://fapi.binance.com")

    @testset "Basic Market Data" begin
        # Test ping endpoint
        @test begin
            (response, _) = BinanceFuturesAPI.ping(market)
            true  # If we get here, the ping was successful
        end

        # Test server time
        @test begin
            (response, _) = BinanceFuturesAPI.server_time(market)
            # Server time should be within 10 seconds of local UTC time
            diff = abs(response.serverTime - Int64(round(datetime2unix(now(UTC)) * 1000)))
            println("Server/local time difference: $diff ms")
            diff < 10000
        end

        # Test exchange information
        @test begin
            (info, _) = BinanceFuturesAPI.exchange_info(market)
            !isempty(info.symbols)  # Should have at least one symbol
        end
    end

    @testset "Market Data Queries" begin
        symbol = "BTCUSDT"  # Use a common trading pair for tests

        # Test order book
        @test begin
            (depth, _) = BinanceFuturesAPI.depth(market, symbol; limit=100)
            !isempty(depth.asks) && !isempty(depth.bids)
        end

        # Test recent trades
        # @test begin
        #     (trades, _) = BinanceFuturesAPI.trades(market, symbol; limit=100)
        #     length(trades) > 0
        # end

        # Test aggregate trades
        @test begin
            (agg_trades, _) = BinanceFuturesAPI.agg_trades(market, symbol; limit=100)
            length(agg_trades) > 0
        end

        # Test klines (candlestick) data
        @test begin
            (klines, _) = BinanceFuturesAPI.klines(market, symbol, "1m";
                limit=100
            )
            length(klines) > 0
        end

        # Test 24hr ticker
        # @test begin
        #     (ticker, _) = BinanceFuturesAPI.ticker24hr(market; symbol=symbol)
        #     ticker.symbol == symbol
        # end
    end

    @testset "Market Statistics" begin
        symbol = "BTCUSDT"

        # Test Mark Price
        # @test begin
        #     (mark_price, _) = BinanceFuturesAPI.premium_index(market; symbol=symbol)
        #     !isnothing(mark_price.markPrice)
        # end

        # Test Funding Rate
        @test begin
            (funding_rate, _) = BinanceFuturesAPI.funding_rate(market; symbol=symbol, limit=100)
            length(funding_rate) > 0
        end

        # # Test Top Long/Short Account Ratio
        # @test begin
        #     (ratio, _) = BinanceFuturesAPI.top_long_short_account_ratio(market; symbol = symbol,
        #         period="1d",
        #         limit=30
        #     )
        #     length(ratio) > 0
        # end
    end

    @testset "Error Handling" begin
        # Test invalid symbol
        @test_throws Exception BinanceFuturesAPI.get_order_book(market; symbol="INVALID", limit=100)

        # Test invalid interval
        @test_throws Exception BinanceFuturesAPI.get_klines(market;
            symbol="BTCUSDT",
            interval="invalid",
            limit=100
        )

        # Test invalid limit
        @test_throws Exception BinanceFuturesAPI.get_recent_trades(market; symbol="BTCUSDT", limit=10000)
    end
end
