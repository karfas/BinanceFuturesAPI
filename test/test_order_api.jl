using Test
using BinanceFuturesAPI
using Dates

include("get_test_parameters.jl")

@testset "Order API Tests" begin
    (url, api_key, api_secret) = get_test_parameters()
    cl = Client(url, api_key, api_secret; verbose=true)
    test_symbol = "BTCUSDT"

    # these return 400 for a valid(?) request

    @testset "Force Orders" begin
        # Test getting force orders
        @test_skip begin
            orders = force_orders(cl;
                symbol=test_symbol,
                auto_close_type="LIQUIDATION"
            )
            !isnothing(orders)
        end
    end

    @testset "Download Transactions" begin
        # Test downloading transactions
        @test_skip begin
            result = download_transactions_asyn(cl;
                limit=10
            )
            !isnothing(result)
        end
    end
end
