# Known Bugs

## Market

OpenAPI doesn't handle oneOf models correctly.
This happens in the `MarketApi` with the calls:
- `book_ticker`
- `Ticker24hr200Response`

### ticker24hr not working.

API call returns
```julia
julia> ticker
{
  "weightedAvgPrice": "96384.36",
  "quoteVolume": "17792499976.80",
  "priceChangePercent": "-0.816",
  "count": 3037553,
  "lastPrice": "96486.50",
  "openPrice": "97280.20",
  "firstId": 5665077248,
  "lastQty": "0.474",
  "openTime": 1733064120000,
  "closeTime": 1733150525703,
  "symbol": "BTCUSDT",
  "priceChange": "-793.70",
  "highPrice": "98266.00",
  "volume": "184599.456",
  "lastId": 5668115302,
  "lowPrice": "94826.00"
}
```
However, none of these values are accessible ?
```julia
julia> ticker.symbol
ERROR: type Ticker24hr200Response has no field symbol
julia> ticker["symbol"]
ERROR: MethodError: no method matching getindex(::BinanceFuturesAPI.APIClient.Ticker24hr200Response, ::String)
```
This is most likely a bug regarding the code generation for the oneOf models.
