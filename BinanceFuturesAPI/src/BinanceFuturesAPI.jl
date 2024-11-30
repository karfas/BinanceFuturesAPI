module BinanceFuturesAPI
    include("../APIClient/src/APIClient.jl")
    using .APIClient

    const BinanceFutures = APIClient
    export BinanceFutures
end