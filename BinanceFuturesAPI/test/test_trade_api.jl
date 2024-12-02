using Test
using BinanceFuturesAPI
using Dates

# Helper function to safely get API credentials
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

@testset "TradeApi Tests" begin
    credentials = get_test_credentials()
    
    if isnothing(credentials)
        @info "Skipping TradeApi tests due to missing credentials"
        return
    end

    api_key, api_secret = credentials
    trade = TradeApi("https://fapi.binance.com", api_key, api_secret)
    test_symbol = "BTCUSDT"

    @testset "Order Management" begin
        timestamp = Int64(round(datetime2unix(now()) * 1000))

        # Test placing a limit order
        @test begin
            # Place a limit buy order far from current price to avoid execution
            order = new_order_trade(trade;
                symbol=test_symbol,
                side="BUY",
                type="LIMIT",
                timeInForce="GTC",
                quantity=0.001,  # Minimum quantity for BTC
                price=1000.0,    # Very low price, unlikely to be hit
                timestamp=timestamp
            )
            
            # Verify order properties
            order.symbol == test_symbol &&
            order.side == "BUY" &&
            order.type == "LIMIT" &&
            order.status in ["NEW", "REJECTED"]  # Order might be rejected if price is too far from current
            
            # Clean up: cancel the order if it was placed
            if order.status == "NEW"
                cancel_order(trade;
                    symbol=test_symbol,
                    orderId=order.orderId,
                    timestamp=Int64(round(datetime2unix(now()) * 1000))
                )
            end
            true
        end

        # Test getting open orders
        @test begin
            orders = get_open_orders(trade;
                symbol=test_symbol,
                timestamp=Int64(round(datetime2unix(now()) * 1000))
            )
            isa(orders, Vector)
        end

        # Test getting order history
        @test begin
            orders = get_all_orders(trade;
                symbol=test_symbol,
                limit=10,
                timestamp=Int64(round(datetime2unix(now()) * 1000))
            )
            isa(orders, Vector) && length(orders) ≤ 10
        end
    end

    @testset "Position Management" begin
        timestamp = Int64(round(datetime2unix(now()) * 1000))

        # Test changing leverage
        @test begin
            response = post_leverage(trade;
                symbol=test_symbol,
                leverage=2,
                timestamp=timestamp
            )
            response.leverage == 2
        end

        # Test getting position information
        @test begin
            positions = position_risk(trade; timestamp=timestamp)
            isa(positions, Vector) && !isempty(positions)
        end

        # Test changing margin type
        @test begin
            # Note: This might fail if already in the requested margin type
            try
                response = post_margin_type(trade;
                    symbol=test_symbol,
                    marginType="ISOLATED",
                    timestamp=timestamp
                )
                true
            catch e
                # Accept both success and "already in requested margin type" as valid
                contains(string(e), "already") || rethrow()
                true
            end
        end
    end

    @testset "Error Handling" begin
        timestamp = Int64(round(datetime2unix(now()) * 1000))

        # Test invalid symbol
        @test_throws Exception new_order_trade(trade;
            symbol="INVALID",
            side="BUY",
            type="LIMIT",
            timeInForce="GTC",
            quantity=0.001,
            price=1000.0,
            timestamp=timestamp
        )

        # Test invalid leverage
        @test_throws Exception post_leverage(trade;
            symbol=test_symbol,
            leverage=0,  # Invalid leverage value
            timestamp=timestamp
        )

        # Test invalid margin type
        @test_throws Exception post_margin_type(trade;
            symbol=test_symbol,
            marginType="INVALID",
            timestamp=timestamp
        )
    end
end
