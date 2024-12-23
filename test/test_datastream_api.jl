using Test
using BinanceFuturesAPI

include("get_test_parameters.jl")

@testset "DataStream API Tests" begin
    (url, api_key, api_secret) = get_test_parameters()
    cl = Client(url, api_key, api_secret; verbose=test_verbose())

    @testset "ListenKey Operations" begin
        # Test creating a listen key
        @test begin
            response = post_listen_key(cl)
            !isnothing(response) && haskey(response, :listenKey)
        end

        # Get the listen key for subsequent tests
        listen_key = nothing
        try
            response = post_listen_key(cl)
            listen_key = response.listenKey
        catch e
            @warn "Failed to create listen key for tests" exception=e
            rethrow(e)
        end

        # Skip remaining tests if we couldn't get a listen key
        if !isnothing(listen_key)
            # Test keeping listen key alive
            @test begin
                response = put_listen_key(cl; listenKey=listen_key)
                isnothing(response)  # Success response is empty
            end

            # Test listing current subscriptions
            @test begin
                response = list_subscriptions(cl)
                !isnothing(response)
            end

            # Test deleting the listen key
            @test begin
                response = delete_listen_key(cl; listenKey=listen_key)
                isnothing(response)  # Success response is empty
            end
        end
    end
end
