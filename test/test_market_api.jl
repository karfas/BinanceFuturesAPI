using Test
using BinanceFuturesAPI
using Dates

@testset "MarketApi Tests" begin
    # Create a market API client
    market = MarketApi("https://fapi.binance.com")

    @testset "Basic Market Data" begin
        # Test ping endpoint
        @test begin
            response = ping(market)
            true  # If we get here, the ping was successful
        end

        # Test server time
        @test begin
            response = time(market)
            # Server time should be within 10 seconds of local time
            abs(response.serverTime - Int64(round(datetime2unix(now()) * 1000))) < 10000
        end

        # Test exchange information
        @test begin
            info = exchange_information(market)
            !isempty(info.symbols)  # Should have at least one symbol
        end
    end

    @testset "Market Data Queries" begin
        symbol = "BTCUSDT"  # Use a common trading pair for tests

        # Test order book
        @test begin
            depth = depth(market; symbol=symbol, limit=100)
            !isempty(depth.bids) && !isempty(depth.asks)
        end

        # Test recent trades
        @test begin
            trades = trades(market; symbol=symbol, limit=100)
            length(trades) > 0
        end

        # Test aggregate trades
        @test begin
            agg_trades = agg_trades(market; symbol=symbol, limit=100)
            length(agg_trades) > 0
        end

        # Test klines (candlestick) data
        @test begin
            klines = klines(market; 
                symbol=symbol, 
                interval="1m",
                limit=100
            )
            length(klines) > 0
        end

        # Test 24hr ticker
        @test begin
            ticker = ticker_24hr(market; symbol=symbol)
            ticker.symbol == symbol
        end
    end

    @testset "Market Statistics" begin
        symbol = "BTCUSDT"

        # Test Mark Price
        @test begin
            mark_price = mark_price(market; symbol=symbol)
            !isnothing(mark_price.markPrice)
        end

        # Test Funding Rate
        @test begin
            funding_rate = funding_rate(market; symbol=symbol, limit=100)
            length(funding_rate) > 0
        end

        # Test Top Long/Short Account Ratio
        @test begin
            ratio = top_long_short_account_ratio(market;
                symbol=symbol,
                period="1d",
                limit=30
            )
            length(ratio) > 0
        end
    end

    @testset "Error Handling" begin
        # Test invalid symbol
        @test_throws Exception depth(market; symbol="INVALID", limit=100)
        
        # Test invalid interval
        @test_throws Exception klines(market; 
            symbol="BTCUSDT",
            interval="invalid",
            limit=100
        )

        # Test invalid limit
        @test_throws Exception trades(market; symbol="BTCUSDT", limit=10000)
    end
end
