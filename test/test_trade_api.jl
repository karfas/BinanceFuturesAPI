using Test
using BinanceFuturesAPI
using Dates

# Helper function to safely get API credentials

include("get_test_parameters.jl")

@testset "TradeApi Tests" begin
    (url, api_key, api_secret) = get_test_parameters()
    cl = Client(url, api_key, api_secret; verbose=true)
    test_symbol = "BTCUSDT"

    @testset "Position Margin History" begin
        # Test getting position margin history
        @test begin
            history = get_position_margin_history(cl;
                symbol=test_symbol,
                type=1,  # 1 for add, 2 for reduce
                limit=10
            )
            !isnothing(history)
        end
    end

    @testset "Multi-Assets Mode" begin
        # Test getting multi-assets mode
        @test begin
            mode = multi_assets_margin(cl)
            !isnothing(mode)
        end

        # Get current mode first
        current_mode = multi_assets_margin(cl)

        # Test changing multi-assets mode to the opposite
        @test begin
            new_mode = post_multi_assets_margin(cl, !current_mode.multiAssetsMargin)
            !isnothing(new_mode)
        end

        # Change it back to original
        post_multi_assets_margin(cl, current_mode.multiAssetsMargin)
    end

    @testset "Leverage and Margin Type" begin
        # Test changing leverage
        @test begin
            result = change_initial_leverage(cl;
                symbol=test_symbol,
                leverage=20
            )
            !isnothing(result)
        end

        # Test changing margin type
        @test begin
            result = change_margin_type(cl;
                symbol=test_symbol,
                marginType="ISOLATED"
            )
            !isnothing(result)
        end
    end

    @testset "Position Margin" begin
        # Test modifying position margin
        @test begin
            result = modify_isolated_position_margin(cl;
                symbol=test_symbol,
                positionSide="BOTH",
                amount=10.0,
                type=1  # 1 for add, 2 for reduce
            )
            !isnothing(result)
        end
    end

    @testset "Position Mode" begin
        # Test changing position mode
        @test begin
            new_mode = post_position_side_dual(cl, false)
            !isnothing(new_mode)
        end

        # Change it back to hedge mode
        post_position_side_dual(cl, true)
    end

    @testset "Order Management" begin
        # Test placing a limit order
        @test begin
            # Place a limit buy order far from current price to avoid execution
            order = new_order(cl;
                symbol=test_symbol,
                side="BUY",
                type="LIMIT",
                timeInForce="GTC",
                quantity=0.001,
                price=10000.0  # Far from current price
            )
            !isnothing(order)
        end

        # Test getting order
        @test begin
            orders = get_order(cl;
                symbol=test_symbol,
                orderId=1  # Replace with actual order ID if needed
            )
            !isnothing(orders)
        end

        # Test modifying order
        @test begin
            modified = modify_order(cl;
                symbol=test_symbol,
                orderId=1,  # Replace with actual order ID if needed
                price=9000.0
            )
            !isnothing(modified)
        end

        # Test getting open orders
        @test begin
            orders = current_open_orders(cl;
                symbol=test_symbol
            )
            !isnothing(orders)
        end

        # Test getting all open orders
        @test begin
            orders = current_all_open_orders(cl)
            !isnothing(orders)
        end

        # Test getting all orders
        @test begin
            orders = all_orders(cl;
                symbol=test_symbol,
                limit=10
            )
            !isnothing(orders)
        end

        # Test cancelling order
        @test begin
            result = cancel_order(cl;
                symbol=test_symbol,
                orderId=1  # Replace with actual order ID if needed
            )
            !isnothing(result)
        end

        # Test cancelling multiple orders
        @test begin
            result = cancel_multiple_orders(cl;
                symbol=test_symbol,
                orderIdList=[1, 2]  # Replace with actual order IDs if needed
            )
            !isnothing(result)
        end

        # Test auto-cancel all orders
        @test begin
            result = auto_cancel_all_orders(cl;
                symbol=test_symbol,
                countdownTime=100000  # 100 seconds
            )
            !isnothing(result)
        end

        # Test cancelling all open orders
        @test begin
            result = cancel_all_orders(cl;
                symbol=test_symbol
            )
            !isnothing(result)
        end
    end
end
