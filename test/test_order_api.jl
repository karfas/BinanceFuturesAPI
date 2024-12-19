using Test
using BinanceFuturesAPI
using Dates

include("get_test_parameters.jl")

@testset "Order API Tests" begin
    (url, api_key, api_secret) = get_test_parameters()
    cl = Client(url, api_key, api_secret; verbose=true)
    test_symbol = "BTCUSDT"

    @testset "Basic Order Operations" begin
        # Test placing a new limit order
        @test begin
            order = post_order(cl;
                symbol=test_symbol,
                side="BUY",
                type="LIMIT",
                quantity="0.001",
                price="20000",
                time_in_force="GTC"
            )
            !isnothing(order)
        end

        # Test getting open orders for a symbol
        @test begin
            orders = get_open_orders(cl;
                symbol=test_symbol
            )
            !isnothing(orders)
        end

        # Test deleting all open orders
        @test begin
            result = delete_all_open_orders(cl;
                symbol=test_symbol
            )
            !isnothing(result)
        end
    end

    @testset "Order Query Operations" begin
        # Test getting order history
        @test begin
            orders = all_orders(cl;
                symbol=test_symbol,
                limit=10
            )
            !isnothing(orders)
        end
    end

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
