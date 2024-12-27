# test/internals.jl
#
# Test some internal BinanceFuturesAPI functions

using Test
using Dates

using BinanceFuturesAPI

include("get_test_parameters.jl")

@testset "process_response" begin
    # Create a client
    symbol = "BTCUSDT"
    (url, api_key, api_secret) = get_test_parameters()
    # Test klines (candlestick) data
    @test begin
        cl = Client(url, api_key, api_secret; verbose=test_verbose())
        candles = klines(cl; symbol = symbol, interval="1m", limit=100)
        !isempty(candles)
    end

    @test begin
        process_response(f::Function, response::Any) = begin
            funcs = Dict{Symbol, Function}(
                :klines => (x -> map.(x -> x.value, x))
            )
            conv = get(funcs, nameof(f), (x -> x))
            response |> conv
        end

        cl = Client(url, api_key, api_secret; 
                    verbose=test_verbose(), 
                    process_response=process_response)
        candles = klines(cl; symbol = symbol, interval="1m", limit=100)
        !isempty(candles) && typeof(candles[1][1]) == Int64
    end

    @testset "cost" begin
        cl = Client(url, api_key, api_secret; verbose=test_verbose())
        last = cl.cost.reported 
        candles = klines(cl; symbol = symbol, interval="1m", limit=100)
        @test cl.cost.reported > last
    end

end
