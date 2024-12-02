using Documenter
using BinanceFuturesAPI

include(joinpath(@__DIR__, "..", "APIClient", "src", "APIClient.jl"))
using .APIClient
makedocs(
    sitename = "BinanceFuturesAPI.jl",
    format = Documenter.HTML(
        prettyurls = get(ENV, "CI", nothing) == "true",
        canonical = "https://your-username.github.io/BinanceFuturesAPI.jl",
        assets = String[],
    ),
    modules = [BinanceFuturesAPI, APIClient],
    authors = "Your Name",
    doctest = true,  # Enable doctesting of code examples
    repo = "https://github.com/your-username/BinanceFuturesAPI.jl",
    pages = [
        "Home" => "index.md",
        "API Reference" => [
            "Market API" => "market.md",
            "Trade API" => "trade.md",
            "Account API" => "account.md",
            "Data Stream API" => "datastream.md",
            "Portfolio Margin API" => "portfoliomargin.md",
            "Models" => "models.md"
        ],
        "Examples" => "examples.md"
    ]
)

deploydocs(
    repo = "github.com/your-username/BinanceFuturesAPI.jl.git",
    devbranch = "main",
    push_preview = true
)
