module BinanceFuturesAPI
    include("../APIClient/src/APIClient.jl")
    using .APIClient
    using OpenAPI.Clients: Client


    # Alias for convenience
    const BinanceFutures = APIClient
    export BinanceFutures

    #const Client = OpenAPI.Clients.Client
    # const BinanceFutures = APIClient
    # export BinanceFutures

    MarketApi(url::String) = BinanceFutures.MarketApi(Client(url))
    export MarketApi
end