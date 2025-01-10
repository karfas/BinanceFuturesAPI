# MarketApi

All URIs are relative to *https://fapi.binance.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**agg_trades**](MarketApi.md#agg_trades) | **GET** /fapi/v1/aggTrades | Compressed/Aggregate Trades List
[**asset_index**](MarketApi.md#asset_index) | **GET** /fapi/v1/assetIndex | Multi-Assets Mode Asset Index
[**basis**](MarketApi.md#basis) | **GET** /fapi/v1/basis | Basis
[**book_ticker**](MarketApi.md#book_ticker) | **GET** /fapi/v1/ticker/bookTicker | Symbol Order Book Ticker
[**constituents**](MarketApi.md#constituents) | **GET** /fapi/v1/constituents | Query Index Price Constituents
[**continuous_klines**](MarketApi.md#continuous_klines) | **GET** /fapi/v1/continuousKlines | Continuous Contract Kline/Candlestick Data
[**depth**](MarketApi.md#depth) | **GET** /fapi/v1/depth | Order Book
[**exchange_info**](MarketApi.md#exchange_info) | **GET** /fapi/v1/exchangeInfo | Exchange Information
[**funding_rate**](MarketApi.md#funding_rate) | **GET** /fapi/v1/fundingRate | Get Funding Rate History
[**global_long_short_account_ratio**](MarketApi.md#global_long_short_account_ratio) | **GET** /fapi/v1/globalLongShortAccountRatio | Long/Short Ratio
[**historical_trades**](MarketApi.md#historical_trades) | **GET** /fapi/v1/historicalTrades | Old Trades Lookup (MARKET_DATA)
[**index_info**](MarketApi.md#index_info) | **GET** /fapi/v1/indexInfo | Composite Index Symbol Information
[**index_price_klines**](MarketApi.md#index_price_klines) | **GET** /fapi/v1/indexPriceKlines | Index Price Kline/Candlestick Data
[**klines**](MarketApi.md#klines) | **GET** /fapi/v1/klines | Kline/Candlestick Data
[**lvt_klines**](MarketApi.md#lvt_klines) | **GET** /fapi/v1/lvtKlines | Historical BLVT NAV Kline/Candlestick
[**mark_price_klines**](MarketApi.md#mark_price_klines) | **GET** /fapi/v1/markPriceKlines | Mark Price Kline/Candlestick Data
[**open_interest**](MarketApi.md#open_interest) | **GET** /fapi/v1/openInterest | Open Interest
[**open_interest_hist**](MarketApi.md#open_interest_hist) | **GET** /futures/data/openInterestHist | Open Interest Statistics
[**ping**](MarketApi.md#ping) | **GET** /fapi/v1/ping | Test Connectivity
[**premium_index**](MarketApi.md#premium_index) | **GET** /fapi/v1/premiumIndex | Mark Price
[**server_time**](MarketApi.md#server_time) | **GET** /fapi/v1/time | Check Server Time
[**taker_long_short_ratio**](MarketApi.md#taker_long_short_ratio) | **GET** /fapi/v1/takerlongshortRatio | Taker Buy/Sell Volume
[**ticker24hr**](MarketApi.md#ticker24hr) | **GET** /fapi/v1/ticker/24hr | 24hr Ticker Price Change Statistics
[**ticker_price**](MarketApi.md#ticker_price) | **GET** /fapi/v2/ticker/price | Symbol Price Ticker V2
[**top_long_short_account_ratio**](MarketApi.md#top_long_short_account_ratio) | **GET** /fapi/v1/topLongShortAccountRatio | Top Trader Long/Short Ratio (Accounts)
[**top_long_short_position_ratio**](MarketApi.md#top_long_short_position_ratio) | **GET** /fapi/v1/topLongShortPositionRatio | Top Trader Long/Short Ratio (Positions)
[**trades**](MarketApi.md#trades) | **GET** /fapi/v1/trades | Recent Trades List


# **agg_trades**
> agg_trades(_api::MarketApi; symbol=nothing, from_id=nothing, start_time=nothing, end_time=nothing, limit=nothing, _mediaType=nothing) -> Vector{AggregateTradesResponseInner}, OpenAPI.Clients.ApiResponse <br/>
> agg_trades(_api::MarketApi, response_stream::Channel; symbol=nothing, from_id=nothing, start_time=nothing, end_time=nothing, limit=nothing, _mediaType=nothing) -> Channel{ Vector{AggregateTradesResponseInner} }, OpenAPI.Clients.ApiResponse

Compressed/Aggregate Trades List

Get compressed, aggregate trades. Trades that fill at the same time, from the same order, with the same price will have the quantity aggregated.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **MarketApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  | [default to nothing]
 **from_id** | **Int64**|  | [default to nothing]
 **start_time** | **Int64**|  | [default to nothing]
 **end_time** | **Int64**|  | [default to nothing]
 **limit** | **Int64**|  | [default to 500]

### Return type

[**Vector{AggregateTradesResponseInner}**](AggregateTradesResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **asset_index**
> asset_index(_api::MarketApi; symbol=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> asset_index(_api::MarketApi, response_stream::Channel; symbol=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

Multi-Assets Mode Asset Index

Multi-Assets Mode Asset Index

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **MarketApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Asset pair | [default to nothing]

### Return type

**Dict{String, Any}**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **basis**
> basis(_api::MarketApi; pair=nothing, contract_type=nothing, period=nothing, limit=nothing, start_time=nothing, end_time=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> basis(_api::MarketApi, response_stream::Channel; pair=nothing, contract_type=nothing, period=nothing, limit=nothing, start_time=nothing, end_time=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

Basis

Basis

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **MarketApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pair** | **String**|  | [default to nothing]
 **contract_type** | **String**|  | [default to nothing]
 **period** | **String**|  | [default to nothing]
 **limit** | **String**|  | [default to nothing]
 **start_time** | **String**|  | [default to nothing]
 **end_time** | **String**|  | [default to nothing]

### Return type

**Dict{String, Any}**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **book_ticker**
> book_ticker(_api::MarketApi; symbol=nothing, _mediaType=nothing) -> BookTicker200Response, OpenAPI.Clients.ApiResponse <br/>
> book_ticker(_api::MarketApi, response_stream::Channel; symbol=nothing, _mediaType=nothing) -> Channel{ BookTicker200Response }, OpenAPI.Clients.ApiResponse

Symbol Order Book Ticker

Best price/qty on the order book for a symbol or symbols.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **MarketApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Trading pair symbol (e.g., BTCUSDT). If not sent, returns all symbols | [default to nothing]

### Return type

[**BookTicker200Response**](BookTicker200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **constituents**
> constituents(_api::MarketApi; symbol=nothing, pair=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> constituents(_api::MarketApi, response_stream::Channel; symbol=nothing, pair=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

Query Index Price Constituents

Query Index Price Constituents

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **MarketApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  | [default to nothing]
 **pair** | **String**|  | [default to nothing]

### Return type

**Dict{String, Any}**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **continuous_klines**
> continuous_klines(_api::MarketApi; pair=nothing, contract_type=nothing, interval=nothing, start_time=nothing, end_time=nothing, limit=nothing, _mediaType=nothing) -> Vector{Vector{KlinesResponseInnerInner}}, OpenAPI.Clients.ApiResponse <br/>
> continuous_klines(_api::MarketApi, response_stream::Channel; pair=nothing, contract_type=nothing, interval=nothing, start_time=nothing, end_time=nothing, limit=nothing, _mediaType=nothing) -> Channel{ Vector{Vector{KlinesResponseInnerInner}} }, OpenAPI.Clients.ApiResponse

Continuous Contract Kline/Candlestick Data

Kline/candlestick bars for a symbol. Klines are uniquely identified by their open time.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **MarketApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pair** | **String**|  | [default to nothing]
 **contract_type** | **String**|  | [default to nothing]
 **interval** | **String**|  | [default to nothing]
 **start_time** | **String**|  | [default to nothing]
 **end_time** | **String**|  | [default to nothing]
 **limit** | **String**|  | [default to nothing]

### Return type

**Vector{Vector{KlinesResponseInnerInner}}**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **depth**
> depth(_api::MarketApi; symbol=nothing, limit=nothing, _mediaType=nothing) -> Depth200Response, OpenAPI.Clients.ApiResponse <br/>
> depth(_api::MarketApi, response_stream::Channel; symbol=nothing, limit=nothing, _mediaType=nothing) -> Channel{ Depth200Response }, OpenAPI.Clients.ApiResponse

Order Book

Order Book 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **MarketApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Trading pair symbol (e.g., BTCUSDT)  | [default to nothing]
 **limit** | **Int64**| Number of price levels to return. Valid values: [5, 10, 20, 50, 100, 500, 1000] Default: 100  | [default to 100]

### Return type

[**Depth200Response**](Depth200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **exchange_info**
> exchange_info(_api::MarketApi; _mediaType=nothing) -> Any, OpenAPI.Clients.ApiResponse <br/>
> exchange_info(_api::MarketApi, response_stream::Channel; _mediaType=nothing) -> Channel{ Any }, OpenAPI.Clients.ApiResponse

Exchange Information

Exchange Information 

### Required Parameters
This endpoint does not need any parameter.

### Return type

**Any**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **funding_rate**
> funding_rate(_api::MarketApi; symbol=nothing, start_time=nothing, end_time=nothing, limit=nothing, _mediaType=nothing) -> Vector{FundingRateResponseInner}, OpenAPI.Clients.ApiResponse <br/>
> funding_rate(_api::MarketApi, response_stream::Channel; symbol=nothing, start_time=nothing, end_time=nothing, limit=nothing, _mediaType=nothing) -> Channel{ Vector{FundingRateResponseInner} }, OpenAPI.Clients.ApiResponse

Get Funding Rate History

Get funding rate history  Weight: 1 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **MarketApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Trading pair symbol (e.g., BTCUSDT). If not sent, returns all symbols  | [default to nothing]
 **start_time** | **String**| Start time in milliseconds. If not sent, returns from earliest available  | [default to nothing]
 **end_time** | **String**| End time in milliseconds. If not sent, returns until latest available  | [default to nothing]
 **limit** | **String**| Number of records to return. Default: 100 Max: 1000  | [default to nothing]

### Return type

[**Vector{FundingRateResponseInner}**](FundingRateResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **global_long_short_account_ratio**
> global_long_short_account_ratio(_api::MarketApi; symbol=nothing, period=nothing, limit=nothing, start_time=nothing, end_time=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> global_long_short_account_ratio(_api::MarketApi, response_stream::Channel; symbol=nothing, period=nothing, limit=nothing, start_time=nothing, end_time=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

Long/Short Ratio

Get present open interest of a specific symbol.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **MarketApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  | [default to nothing]
 **period** | **String**| \&quot;5m\&quot;,\&quot;15m\&quot;,\&quot;30m\&quot;,\&quot;1h\&quot;,\&quot;2h\&quot;,\&quot;4h\&quot;,\&quot;6h\&quot;,\&quot;12h\&quot;,\&quot;1d\&quot; | [default to nothing]
 **limit** | **String**|  | [default to nothing]
 **start_time** | **String**|  | [default to nothing]
 **end_time** | **String**|  | [default to nothing]
 **x_mbx_apikey** | **String**|  | [default to nothing]

### Return type

**Dict{String, Any}**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **historical_trades**
> historical_trades(_api::MarketApi; symbol=nothing, limit=nothing, from_id=nothing, _mediaType=nothing) -> Vector{HistoricalTradesResponseInner}, OpenAPI.Clients.ApiResponse <br/>
> historical_trades(_api::MarketApi, response_stream::Channel; symbol=nothing, limit=nothing, from_id=nothing, _mediaType=nothing) -> Channel{ Vector{HistoricalTradesResponseInner} }, OpenAPI.Clients.ApiResponse

Old Trades Lookup (MARKET_DATA)

This endpoint need your API key only, not the secret key.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **MarketApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  | [default to nothing]
 **limit** | **Int64**|  | [default to 500]
 **from_id** | **Int64**|  | [default to nothing]

### Return type

[**Vector{HistoricalTradesResponseInner}**](HistoricalTradesResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **index_info**
> index_info(_api::MarketApi; symbol=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> index_info(_api::MarketApi, response_stream::Channel; symbol=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

Composite Index Symbol Information

Composite Index Symbol Information

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **MarketApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| token name | [default to nothing]
 **x_mbx_apikey** | **String**|  | [default to nothing]

### Return type

**Dict{String, Any}**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **index_price_klines**
> index_price_klines(_api::MarketApi; pair=nothing, interval=nothing, start_time=nothing, end_time=nothing, limit=nothing, _mediaType=nothing) -> Vector{Vector{KlinesResponseInnerInner}}, OpenAPI.Clients.ApiResponse <br/>
> index_price_klines(_api::MarketApi, response_stream::Channel; pair=nothing, interval=nothing, start_time=nothing, end_time=nothing, limit=nothing, _mediaType=nothing) -> Channel{ Vector{Vector{KlinesResponseInnerInner}} }, OpenAPI.Clients.ApiResponse

Index Price Kline/Candlestick Data

Kline/candlestick bars for the index price of a pair. Klines are uniquely identified by their open time.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **MarketApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pair** | **String**|  | [default to nothing]
 **interval** | **String**| 1m, 1h, 1d | [default to nothing]
 **start_time** | **String**|  | [default to nothing]
 **end_time** | **String**|  | [default to nothing]
 **limit** | **String**| Default 500; max 1500. | [default to nothing]

### Return type

**Vector{Vector{KlinesResponseInnerInner}}**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **klines**
> klines(_api::MarketApi; symbol=nothing, interval=nothing, start_time=nothing, end_time=nothing, limit=nothing, _mediaType=nothing) -> Any, OpenAPI.Clients.ApiResponse <br/>
> klines(_api::MarketApi, response_stream::Channel; symbol=nothing, interval=nothing, start_time=nothing, end_time=nothing, limit=nothing, _mediaType=nothing) -> Channel{ Any }, OpenAPI.Clients.ApiResponse

Kline/Candlestick Data

Kline/candlestick bars for a symbol. Klines are uniquely identified by their open time.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **MarketApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Trading pair symbol (e.g., BTCUSDT) | [default to nothing]
 **interval** | **String**| Kline/candlestick interval: - 1m: 1 minute - 3m: 3 minutes - 5m: 5 minutes - 15m: 15 minutes - 30m: 30 minutes - 1h: 1 hour - 2h: 2 hours - 4h: 4 hours - 6h: 6 hours - 8h: 8 hours - 12h: 12 hours - 1d: 1 day - 3d: 3 days - 1w: 1 week - 1M: 1 month  | [default to nothing]
 **start_time** | **Int64**| Start time in milliseconds. If not sent, returns from earliest available | [default to nothing]
 **end_time** | **Int64**| End time in milliseconds. If not sent, returns until latest available | [default to nothing]
 **limit** | **Int64**| Number of data points to return. Default: 500 Max: 1500  | [default to 500]

### Return type

**Any**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **lvt_klines**
> lvt_klines(_api::MarketApi; symbol=nothing, interval=nothing, start_time=nothing, end_time=nothing, limit=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Vector{Vector{KlinesResponseInnerInner}}, OpenAPI.Clients.ApiResponse <br/>
> lvt_klines(_api::MarketApi, response_stream::Channel; symbol=nothing, interval=nothing, start_time=nothing, end_time=nothing, limit=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Vector{Vector{KlinesResponseInnerInner}} }, OpenAPI.Clients.ApiResponse

Historical BLVT NAV Kline/Candlestick

Historical BLVT NAV Kline/Candlestick

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **MarketApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| token name | [default to nothing]
 **interval** | **String**|  | [default to nothing]
 **start_time** | **String**|  | [default to nothing]
 **end_time** | **String**|  | [default to nothing]
 **limit** | **String**| default 500, max 1000 | [default to nothing]
 **x_mbx_apikey** | **String**|  | [default to nothing]

### Return type

**Vector{Vector{KlinesResponseInnerInner}}**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **mark_price_klines**
> mark_price_klines(_api::MarketApi; symbol=nothing, interval=nothing, start_time=nothing, end_time=nothing, limit=nothing, _mediaType=nothing) -> Vector{Vector{KlinesResponseInnerInner}}, OpenAPI.Clients.ApiResponse <br/>
> mark_price_klines(_api::MarketApi, response_stream::Channel; symbol=nothing, interval=nothing, start_time=nothing, end_time=nothing, limit=nothing, _mediaType=nothing) -> Channel{ Vector{Vector{KlinesResponseInnerInner}} }, OpenAPI.Clients.ApiResponse

Mark Price Kline/Candlestick Data

Kline/candlestick bars for the mark price of a symbol. Klines are uniquely identified by their open time.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **MarketApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  | [default to nothing]
 **interval** | **String**| 1m, 1h, 1d | [default to nothing]
 **start_time** | **String**|  | [default to nothing]
 **end_time** | **String**|  | [default to nothing]
 **limit** | **String**| Default 500; max 1500. | [default to nothing]

### Return type

**Vector{Vector{KlinesResponseInnerInner}}**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **open_interest**
> open_interest(_api::MarketApi; symbol=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> open_interest(_api::MarketApi, response_stream::Channel; symbol=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

Open Interest

Get present open interest of a specific symbol.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **MarketApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  | [default to nothing]

### Return type

**Dict{String, Any}**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **open_interest_hist**
> open_interest_hist(_api::MarketApi; symbol=nothing, period=nothing, limit=nothing, start_time=nothing, end_time=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> open_interest_hist(_api::MarketApi, response_stream::Channel; symbol=nothing, period=nothing, limit=nothing, start_time=nothing, end_time=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

Open Interest Statistics

Get present open interest of a specific symbol.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **MarketApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  | [default to nothing]
 **period** | **String**| \&quot;5m\&quot;,\&quot;15m\&quot;,\&quot;30m\&quot;,\&quot;1h\&quot;,\&quot;2h\&quot;,\&quot;4h\&quot;,\&quot;6h\&quot;,\&quot;12h\&quot;,\&quot;1d\&quot; | [default to nothing]
 **limit** | **String**|  | [default to nothing]
 **start_time** | **String**|  | [default to nothing]
 **end_time** | **String**|  | [default to nothing]
 **x_mbx_apikey** | **String**|  | [default to nothing]

### Return type

**Dict{String, Any}**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **ping**
> ping(_api::MarketApi; _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> ping(_api::MarketApi, response_stream::Channel; _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

Test Connectivity

Test connectivity to the Rest API. 

### Required Parameters
This endpoint does not need any parameter.

### Return type

**Dict{String, Any}**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **premium_index**
> premium_index(_api::MarketApi; symbol=nothing, _mediaType=nothing) -> Vector{PremiumIndexResponseInner}, OpenAPI.Clients.ApiResponse <br/>
> premium_index(_api::MarketApi, response_stream::Channel; symbol=nothing, _mediaType=nothing) -> Channel{ Vector{PremiumIndexResponseInner} }, OpenAPI.Clients.ApiResponse

Mark Price

Mark Price and Funding Rate  Weight: 1 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **MarketApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Trading pair symbol (e.g., BTCUSDT). If not sent, returns all symbols  | [default to nothing]

### Return type

[**Vector{PremiumIndexResponseInner}**](PremiumIndexResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **server_time**
> server_time(_api::MarketApi; _mediaType=nothing) -> ServerTime200Response, OpenAPI.Clients.ApiResponse <br/>
> server_time(_api::MarketApi, response_stream::Channel; _mediaType=nothing) -> Channel{ ServerTime200Response }, OpenAPI.Clients.ApiResponse

Check Server Time

Check Server Time 

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**ServerTime200Response**](ServerTime200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **taker_long_short_ratio**
> taker_long_short_ratio(_api::MarketApi; symbol=nothing, period=nothing, limit=nothing, start_time=nothing, end_time=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> taker_long_short_ratio(_api::MarketApi, response_stream::Channel; symbol=nothing, period=nothing, limit=nothing, start_time=nothing, end_time=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

Taker Buy/Sell Volume

Taker Buy/Sell Volume

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **MarketApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  | [default to nothing]
 **period** | **String**| \&quot;5m\&quot;,\&quot;15m\&quot;,\&quot;30m\&quot;,\&quot;1h\&quot;,\&quot;2h\&quot;,\&quot;4h\&quot;,\&quot;6h\&quot;,\&quot;12h\&quot;,\&quot;1d\&quot; | [default to nothing]
 **limit** | **String**| default 30, max 500 | [default to nothing]
 **start_time** | **String**|  | [default to nothing]
 **end_time** | **String**|  | [default to nothing]
 **x_mbx_apikey** | **String**|  | [default to nothing]

### Return type

**Dict{String, Any}**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **ticker24hr**
> ticker24hr(_api::MarketApi; symbol=nothing, symbols=nothing, _mediaType=nothing) -> Ticker24hr200Response, OpenAPI.Clients.ApiResponse <br/>
> ticker24hr(_api::MarketApi, response_stream::Channel; symbol=nothing, symbols=nothing, _mediaType=nothing) -> Channel{ Ticker24hr200Response }, OpenAPI.Clients.ApiResponse

24hr Ticker Price Change Statistics

24 hour rolling window price change statistics.  Careful when accessing this with no symbol.  Weight:  1 for a single symbol;  40 when the symbol parameter is omitted 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **MarketApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Trading pair symbol (e.g., BTCUSDT). If not sent, returns all symbols | [default to nothing]
 **symbols** | [**Vector{String}**](String.md)| Array of trading pair symbols. Maximum of 100 symbols can be sent in a single request | [default to nothing]

### Return type

[**Ticker24hr200Response**](Ticker24hr200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **ticker_price**
> ticker_price(_api::MarketApi; symbol=nothing, symbols=nothing, _mediaType=nothing) -> Vector{SymbolPriceTickerResponseInner}, OpenAPI.Clients.ApiResponse <br/>
> ticker_price(_api::MarketApi, response_stream::Channel; symbol=nothing, symbols=nothing, _mediaType=nothing) -> Channel{ Vector{SymbolPriceTickerResponseInner} }, OpenAPI.Clients.ApiResponse

Symbol Price Ticker V2

Latest price for a symbol or symbols.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **MarketApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Trading pair symbol (e.g., BTCUSDT). If not sent, returns all symbols | [default to nothing]
 **symbols** | [**Vector{String}**](String.md)| Array of trading pair symbols. Maximum of 100 symbols can be sent in a single request | [default to nothing]

### Return type

[**Vector{SymbolPriceTickerResponseInner}**](SymbolPriceTickerResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **top_long_short_account_ratio**
> top_long_short_account_ratio(_api::MarketApi; symbol=nothing, period=nothing, limit=nothing, start_time=nothing, end_time=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> top_long_short_account_ratio(_api::MarketApi, response_stream::Channel; symbol=nothing, period=nothing, limit=nothing, start_time=nothing, end_time=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

Top Trader Long/Short Ratio (Accounts)

Get present open interest of a specific symbol.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **MarketApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  | [default to nothing]
 **period** | **String**| \&quot;5m\&quot;,\&quot;15m\&quot;,\&quot;30m\&quot;,\&quot;1h\&quot;,\&quot;2h\&quot;,\&quot;4h\&quot;,\&quot;6h\&quot;,\&quot;12h\&quot;,\&quot;1d\&quot; | [default to nothing]
 **limit** | **String**|  | [default to nothing]
 **start_time** | **String**|  | [default to nothing]
 **end_time** | **String**|  | [default to nothing]

### Return type

**Dict{String, Any}**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **top_long_short_position_ratio**
> top_long_short_position_ratio(_api::MarketApi; symbol=nothing, period=nothing, limit=nothing, start_time=nothing, end_time=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> top_long_short_position_ratio(_api::MarketApi, response_stream::Channel; symbol=nothing, period=nothing, limit=nothing, start_time=nothing, end_time=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

Top Trader Long/Short Ratio (Positions)

Get present open interest of a specific symbol.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **MarketApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  | [default to nothing]
 **period** | **String**| \&quot;5m\&quot;,\&quot;15m\&quot;,\&quot;30m\&quot;,\&quot;1h\&quot;,\&quot;2h\&quot;,\&quot;4h\&quot;,\&quot;6h\&quot;,\&quot;12h\&quot;,\&quot;1d\&quot; | [default to nothing]
 **limit** | **String**|  | [default to nothing]
 **start_time** | **String**|  | [default to nothing]
 **end_time** | **String**|  | [default to nothing]

### Return type

**Dict{String, Any}**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **trades**
> trades(_api::MarketApi; symbol=nothing, limit=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> trades(_api::MarketApi, response_stream::Channel; symbol=nothing, limit=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

Recent Trades List

Recent Trades List

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **MarketApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Trading pair symbol (e.g., BTCUSDT) | [default to nothing]
 **limit** | **Int64**| Number of recent trades to return. Default: 500 Max: 1000  | [default to 500]

### Return type

**Dict{String, Any}**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

