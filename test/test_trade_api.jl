using Test
using BinanceFuturesAPI
using Dates

# Helper function to safely get API credentials

include("get_test_parameters.jl")

@testset "TradeApi Tests" begin
    (url, api_key, api_secret) = get_test_parameters()
    cl = Client(url, api_key, api_secret)
    test_symbol = "BTCUSDT"

    # @testset "Position Mode" begin
    #     # Test changing position mode
    #     # testnet returns 400 for
    #     # POST /fapi/v1/positionSide/dual?dualSidePosition=false&timestamp=1733764503270&signature=a55bb6a1f2ec840a9e1242a7f5f9151b0944399a2f7b5d01275c5ca087b765b1 HTTP/1.1

    #     @test begin
    #         new_mode = post_position_side_dual(cl, false)
    #         !isnothing(new_mode)
    #     end

    #     # Change it back
    #     post_position_side_dual(cl, true)
    # end

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

        # Test getting open orders
        @test begin
            orders = current_open_orders(cl; symbol=test_symbol)
            !isnothing(orders)
        end

        # Test getting all open orders
        @test begin
            orders = current_all_open_orders(cl)
            !isnothing(orders)
        end

        # Test cancelling all open orders
        @test begin
            result = cancel_all_orders(cl; symbol=test_symbol)
            !isnothing(result)
        end
    end

    @testset "Position Management" begin
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

        # Test modifying position margin
        @test begin
            result = modify_isolated_position_margin(cl;
                symbol=test_symbol,
                amount=10.0,
                type=1  # Add margin
            )
            !isnothing(result)
        end

        # Test getting position margin history
        @test begin
            history = get_position_margin_change_history(cl;
                symbol=test_symbol
            )
            !isnothing(history)
        end

        # Test getting position risk
        @test begin
            risk = position_risk(cl)
            !isnothing(risk)
        end
    end

    @testset "Trading History" begin
        # Test getting user trades
        @test begin
            trades = user_trades(cl; symbol=test_symbol)
            !isnothing(trades)
        end

        # Test getting income history
        @test begin
            income = income_history(cl)
            !isnothing(income)
        end
    end

    @testset "Account Information" begin
        # Test getting commission rate
        @test begin
            rate = commission_rate(cl; symbol=test_symbol)
            !isnothing(rate)
        end

        # Test getting leverage brackets
        @test begin
            brackets = leveraged_brackets(cl; symbol=test_symbol)
            !isnothing(brackets)
        end

        # Test getting ADL quantile
        @test begin
            quantile = adl_quantile(cl)
            !isnothing(quantile)
        end

        # Test getting force orders
        @test begin
            orders = force_orders(cl)
            !isnothing(orders)
        end
    end
end
