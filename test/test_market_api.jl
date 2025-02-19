using Test
using Dates

using BinanceFuturesAPI

include("get_test_parameters.jl")

@testset "MarketApi Tests" begin
    # Create a client
    (url, api_key, api_secret) = get_test_parameters()
    cl = Client(url, api_key, api_secret; verbose=test_verbose())

    @testset "ping" begin
        # Test ping endpoint
        @test begin
            ping(cl)
            true  # If we get here, the ping was successful
        end
    end

    @testset "Basic Market Data" begin
        # Test server time
        @test begin
            response = server_time(cl)
            # Server time should be within 10 seconds of local UTC time
            diff = abs(response.serverTime - Int64(round(datetime2unix(now(UTC)) * 1000)))
            # println("Server/local time difference: $diff ms")
            diff < 10000
        end
    end

    @testset "Exchange Info Tests" begin
        # Test exchange info endpoint
        info = exchange_info(cl)
        @test !isempty(info["timezone"])
        @test info["serverTime"] > 0
        @test !isempty(info["rateLimits"])
        @test !isempty(info["symbols"])

        # Check specific fields in symbols
        btc_symbol = first(filter(s -> s["symbol"] == "BTCUSDT", info["symbols"]))
        @test btc_symbol["symbol"] == "BTCUSDT"
        @test btc_symbol["baseAsset"] == "BTC"
        @test btc_symbol["quoteAsset"] == "USDT"
        @test btc_symbol["status"] == "TRADING"
        @test btc_symbol["pricePrecision"] >= 0
        @test btc_symbol["quantityPrecision"] >= 0
    end

    @testset "Market Data Queries" begin
        symbol = "BTCUSDT"  # Use a common trading pair for tests

        # Test order book
        @test begin
            depth_info = depth(cl; symbol=symbol, limit=100)
            !isempty(depth_info.asks) && !isempty(depth_info.bids)
        end

        # Test aggregate trades
        @test begin
            trades = agg_trades(cl; symbol = symbol, limit=100)
            !isempty(trades)
        end

        # Test klines (candlestick) data
        @test begin
            candles = klines(cl; symbol = symbol, interval="1m", limit=100)
            !isempty(candles)
        end
    end

    @testset "Market Statistics" begin
        symbol = "BTCUSDT"

        # Test Funding Rate
        @test begin
            rates = funding_rate(cl; symbol=symbol, limit=100)
            !isempty(rates)
        end
        # Test book ticker without symbol (returns array)
        @test begin
            tickers = book_ticker(cl)
            isa(tickers.value, Vector) && !isempty(tickers.value)
        end
        # Test book ticker with symbol (returns single object)
        @test begin
            ticker = book_ticker(cl; symbol=symbol)
            !isa(ticker, Vector) && ticker.value["symbol"] == symbol && !isempty(ticker.value["bidPrice"]) && !isempty(ticker.value["askPrice"])
        end
        # Test 24hr ticker
        @test begin
            stats = ticker24hr(cl; symbol=symbol)
            stats.value["symbol"] == symbol
        end
    end
end
