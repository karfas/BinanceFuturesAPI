using Test
using BinanceFuturesAPI
using Dates

# Helper function to safely get API credentials (same as in test_trade_api.jl)
function get_test_credentials()
    api_key = get(ENV, "BINANCE_FUTURES_API_KEY", "")
    api_secret = get(ENV, "BINANCE_FUTURES_API_SECRET", "")
    
    if isempty(api_key) || isempty(api_secret)
        @warn """
        Skipping authenticated tests because API credentials are not set.
        To run these tests, set the following environment variables:
        - BINANCE_FUTURES_API_KEY
        - BINANCE_FUTURES_API_SECRET
        """
        return nothing
    end
    
    return (api_key, api_secret)
end

@testset "AccountApi Tests" begin
    credentials = get_test_credentials()
    
    if isnothing(credentials)
        @info "Skipping AccountApi tests due to missing credentials"
        return
    end

    api_key, api_secret = credentials
    account = AccountApi("https://fapi.binance.com", api_key, api_secret)

    @testset "Account Information" begin
        timestamp = Int64(round(datetime2unix(now()) * 1000))

        # Test getting account information
        @test begin
            info = account_information(account; timestamp=timestamp)
            !isnothing(info.totalWalletBalance) &&
            !isnothing(info.totalUnrealizedProfit) &&
            isa(info.positions, Vector)
        end

        # Test getting balance information
        @test begin
            balance = balance_information(account; timestamp=timestamp)
            isa(balance, Vector) && !isempty(balance)
        end

        # Test getting position information
        @test begin
            positions = position_information(account; timestamp=timestamp)
            isa(positions, Vector)
        end
    end

    @testset "Trading History" begin
        timestamp = Int64(round(datetime2unix(now()) * 1000))
        test_symbol = "BTCUSDT"

        # Test getting trade history
        @test begin
            trades = user_trades(account;
                symbol=test_symbol,
                limit=10,
                timestamp=timestamp
            )
            isa(trades, Vector)
        end

        # Test getting income history
        @test begin
            income = income_history(account;
                symbol=test_symbol,
                limit=10,
                timestamp=timestamp
            )
            isa(income, Vector)
        end
    end

    @testset "Commission Information" begin
        timestamp = Int64(round(datetime2unix(now()) * 1000))

        # Test getting commission rates
        @test begin
            rates = commission_rate(account;
                symbol="BTCUSDT",
                timestamp=timestamp
            )
            !isnothing(rates.symbol) &&
            !isnothing(rates.makerCommissionRate) &&
            !isnothing(rates.takerCommissionRate)
        end
    end

    @testset "Error Handling" begin
        timestamp = Int64(round(datetime2unix(now()) * 1000))

        # Test invalid symbol for trade history
        @test_throws Exception user_trades(account;
            symbol="INVALID",
            limit=10,
            timestamp=timestamp
        )

        # Test invalid time range for income history
        @test_throws Exception income_history(account;
            symbol="BTCUSDT",
            startTime=timestamp,
            endTime=timestamp - 1000,  # End time before start time
            timestamp=timestamp
        )

        # Test invalid limit for trade history
        @test_throws Exception user_trades(account;
            symbol="BTCUSDT",
            limit=1001,  # Exceeds maximum limit
            timestamp=timestamp
        )
    end
end
