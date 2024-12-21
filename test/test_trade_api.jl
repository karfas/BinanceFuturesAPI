using Test
using BinanceFuturesAPI
using Dates

# Helper function to safely get API credentials

include("get_test_parameters.jl")

@testset "TradeApi Tests" begin
    (url, api_key, api_secret) = get_test_parameters()
    cl = Client(url, api_key, api_secret; verbose=test_verbose())
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
        @test_skip begin
            new_mode = post_multi_assets_margin(cl; multi_assets_margin = !current_mode.multiAssetsMargin)
            !isnothing(new_mode)
        end

        # Change it back to original
        post_multi_assets_margin(cl; multi_assets_margin = current_mode.multiAssetsMargin)
    end

    @testset "Leverage and Margin Type" begin
        # Test changing leverage
        @test begin
            result = post_leverage(cl;
                symbol=test_symbol,
                leverage=20
            )
            !isnothing(result)
        end

        # Test changing margin type
        @test_skip begin
            result = post_margin_type(cl;
                symbol=test_symbol,
                margin_type="ISOLATED"
            )
            !isnothing(result)
        end
    end

    @testset "Position Margin" begin
        # Test modifying position margin
        @test_skip begin
            result = post_position_margin(cl;
                symbol=test_symbol,
                position_side="BOTH",
                amount=10.0,
                type=1  # 1 for add, 2 for reduce
            )
            !isnothing(result)
        end
    end

    @testset "Position Mode" begin
        # Test changing position mode
        @test_skip begin
            new_mode = post_position_side_dual(cl; dual_side_position=false)
            !isnothing(new_mode)
        end

        # Change it back to hedge mode
        post_position_side_dual(cl; dual_side_position=true)
    end

end
