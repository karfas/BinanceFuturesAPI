using Test
using BinanceFuturesAPI
using Dates

include("get_test_parameters.jl")

@testset "Account API Tests" begin
    (url, api_key, api_secret) = get_test_parameters()
    cl = Client(url, api_key, api_secret; verbose=false)
    test_symbol = "BTCUSDT"

    @testset "Account Information" begin
        # Test getting account information
        @test begin
            info = account(cl)
            !isnothing(info)
        end
    end

    @testset "ADL Quantile" begin
        # Test getting ADL quantile
        @test begin
            quantile = adl_quantile(cl;
                symbol=test_symbol
            )
            !isnothing(quantile)
        end
    end

    @testset "Balance" begin
        # Test getting balance
        @test begin
            bal = balance(cl)
            !isnothing(bal)
        end
    end

    @testset "Commission Rate" begin
        # Test getting commission rate
        @test begin
            rate = commission_rate(cl;
                symbol=test_symbol
            )
            !isnothing(rate)
        end
    end

    @testset "API Trading Status" begin
        # Test getting API trading status
        @test begin
            status = api_trading_status(cl)
            !isnothing(status)
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
                symbol=test_symbol
            )
            !isnothing(bracket)
        end
    end

    @testset "Position Risk" begin
        # Test getting position risk
        @test begin
            risk = position_risk(cl)
            !isnothing(risk)
        end
    end

    @testset "User Trades" begin
        # Test getting user trades
        # returns 400 for a valid(?) request
        @test begin
            trades = user_trades(cl;
                symbol=test_symbol,
                limit=10
            )
            !isnothing(trades)
        end
    end

end
