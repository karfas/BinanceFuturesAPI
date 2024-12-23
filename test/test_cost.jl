using Test
using Dates

using BinanceFuturesAPI

include("get_test_parameters.jl")

@testset "Cost Tests" begin
    # Create a client
    (url, api_key, api_secret) = get_test_parameters()
    cl = Client(url, api_key, api_secret; verbose=test_verbose())

    @testset "ping" begin
        # Test ping endpoint
        @test begin
            ping(cl)
            cl.cost.active == 0 && cl.cost.reported == 1
        end
    end
end # testset