using Test
using BinanceFuturesAPI
using Dates

include("get_test_parameters.jl")

@testset "Account API Tests" begin
    (url, api_key, api_secret) = get_test_parameters()
    cl = Client(url, api_key, api_secret)

    @testset "Account Information" begin
        # Test getting account information
        @test begin
            info = account(cl)
            !isnothing(info)
        end
    end

    @testset "Balance" begin
        # Test getting balance
        @test begin
            bal = balance(cl)
            !isnothing(bal)
        end
    end

    @testset "Position Risk" begin
        # Test getting position risk
        @test begin
            risk = position_risk(cl)
            !isnothing(risk)
        end
    end

    @testset "Income History" begin
        # Test getting income history
        @test begin
            inc = income(cl;
                limit=10
            )
            !isnothing(inc)
        end
    end

    @testset "Leverage Bracket" begin
        # Test getting leverage bracket for BTC
        @test begin
            bracket = leverage_bracket(cl;
                symbol="BTCUSDT"
            )
            !isnothing(bracket)
        end
    end
end
