using Test
using BinanceFuturesAPI
using Dates

include("get_test_parameters.jl")

@testset "Account API Tests" begin
    (url, api_key, api_secret) = get_test_parameters()
    cl = Client(url, api_key, api_secret)
    timestamp = Int64(round(datetime2unix(now(UTC)) * 1000))

    @testset "Account Information" begin
        # Test getting account information
        @test begin
            info = get_account_info(cl)
            !isnothing(info)
        end
    end

    @testset "Balance" begin
        # Test getting balance
        @test begin
            balance = get_balance(cl)
            !isnothing(balance)
        end
    end

    @testset "Position Risk" begin
        # Test getting position risk
        @test begin
            risk = get_position_risk(cl)
            !isnothing(risk)
        end
    end

    @testset "Income History" begin
        # Test getting income history
        @test begin
            income = get_income_history(cl;
                limit=10
            )
            !isnothing(income)
        end
    end

    @testset "Leverage Bracket" begin
        # Test getting leverage bracket for BTC
        @test begin
            bracket = get_leverage_bracket(cl;
                symbol="BTCUSDT"
            )
            !isnothing(bracket)
        end
    end
end
