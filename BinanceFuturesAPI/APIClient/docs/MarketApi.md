# MarketApi

All URIs are relative to *http://}*

Method | HTTP request | Description
------------- | ------------- | -------------
[**basis**](MarketApi.md#basis) | **GET** /futures/data/basis | Basis
[**check_server_time**](MarketApi.md#check_server_time) | **GET** /fapi/v1/time | Check Server Time
[**composite_index_symbol_information**](MarketApi.md#composite_index_symbol_information) | **GET** /fapi/v1/indexInfo | Composite Index Symbol Information
[**compressed_aggregate_trades_list**](MarketApi.md#compressed_aggregate_trades_list) | **GET** /fapi/v1/aggTrades | Compressed/Aggregate Trades List
[**continuous_contract_kline_candlestick_data**](MarketApi.md#continuous_contract_kline_candlestick_data) | **GET** /fapi/v1/continuousKlines | Continuous Contract Kline/Candlestick Data
[**exchange_information**](MarketApi.md#exchange_information) | **GET** /fapi/v1/exchangeInfo | Exchange Information
[**get_funding_rate_history**](MarketApi.md#get_funding_rate_history) | **GET** /fapi/v1/fundingRate | Get Funding Rate History
[**historical_blvt_nav_kline_candlestick**](MarketApi.md#historical_blvt_nav_kline_candlestick) | **GET** /fapi/v1/lvtKlines | Historical BLVT NAV Kline/Candlestick
[**index_price_kline_candlestick_data**](MarketApi.md#index_price_kline_candlestick_data) | **GET** /fapi/v1/indexPriceKlines | Index Price Kline/Candlestick Data
[**kline_candlestick_data**](MarketApi.md#kline_candlestick_data) | **GET** /fapi/v1/klines | Kline/Candlestick Data
[**long_short_ratio**](MarketApi.md#long_short_ratio) | **GET** /futures/data/globalLongShortAccountRatio | Long/Short Ratio
[**mark_price**](MarketApi.md#mark_price) | **GET** /fapi/v1/premiumIndex | Mark Price
[**mark_price_kline_candlestick_data**](MarketApi.md#mark_price_kline_candlestick_data) | **GET** /fapi/v1/markPriceKlines | Mark Price Kline/Candlestick Data
[**multi_assets_mode_asset_index**](MarketApi.md#multi_assets_mode_asset_index) | **GET** /fapi/v1/assetIndex | Multi-Assets Mode Asset Index
[**old_trades_lookup_market_data**](MarketApi.md#old_trades_lookup_market_data) | **GET** /fapi/v1/historicalTrades | Old Trades Lookup (MARKET_DATA)
[**open_interest**](MarketApi.md#open_interest) | **GET** /fapi/v1/openInterest | Open Interest
[**open_interest_statistics**](MarketApi.md#open_interest_statistics) | **GET** /futures/data/openInterestHist | Open Interest Statistics
[**order_book**](MarketApi.md#order_book) | **GET** /fapi/v1/depth | Order Book
[**query_index_price_constituents**](MarketApi.md#query_index_price_constituents) | **GET** /fapi/v1/constituents | Query Index Price Constituents
[**recent_trades_list**](MarketApi.md#recent_trades_list) | **GET** /fapi/v1/trades | Recent Trades List
[**symbol_order_book_ticker**](MarketApi.md#symbol_order_book_ticker) | **GET** /fapi/v1/ticker/bookTicker | Symbol Order Book Ticker
[**symbol_price_ticker_v2**](MarketApi.md#symbol_price_ticker_v2) | **GET** /fapi/v2/ticker/price | Symbol Price Ticker V2
[**taker_buy_sell_volume**](MarketApi.md#taker_buy_sell_volume) | **GET** /futures/data/takerlongshortRatio | Taker Buy/Sell Volume
[**test_connectivity**](MarketApi.md#test_connectivity) | **GET** /fapi/v1/ping | Test Connectivity
[**ticker_price_change_statistics24hr**](MarketApi.md#ticker_price_change_statistics24hr) | **GET** /fapi/v1/ticker/24hr | 24hr Ticker Price Change Statistics
[**top_trader_long_short_ratio_accounts**](MarketApi.md#top_trader_long_short_ratio_accounts) | **GET** /futures/data/topLongShortAccountRatio | Top Trader Long/Short Ratio (Accounts)
[**top_trader_long_short_ratio_positions**](MarketApi.md#top_trader_long_short_ratio_positions) | **GET** /futures/data/topLongShortPositionRatio | Top Trader Long/Short Ratio (Positions)


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

# **check_server_time**
> check_server_time(_api::MarketApi; _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> check_server_time(_api::MarketApi, response_stream::Channel; _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

Check Server Time

Check Server Time

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

# **composite_index_symbol_information**
> composite_index_symbol_information(_api::MarketApi; symbol=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> composite_index_symbol_information(_api::MarketApi, response_stream::Channel; symbol=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

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

# **compressed_aggregate_trades_list**
> compressed_aggregate_trades_list(_api::MarketApi; symbol=nothing, from_id=nothing, start_time=nothing, end_time=nothing, limit=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> compressed_aggregate_trades_list(_api::MarketApi, response_stream::Channel; symbol=nothing, from_id=nothing, start_time=nothing, end_time=nothing, limit=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

Compressed/Aggregate Trades List

Compressed/Aggregate Trades List

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **MarketApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  | [default to nothing]
 **from_id** | **String**|  | [default to nothing]
 **start_time** | **String**|  | [default to nothing]
 **end_time** | **String**|  | [default to nothing]
 **limit** | **String**| Default 500; max 1000. | [default to nothing]

### Return type

**Dict{String, Any}**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **continuous_contract_kline_candlestick_data**
> continuous_contract_kline_candlestick_data(_api::MarketApi; pair=nothing, contract_type=nothing, interval=nothing, start_time=nothing, end_time=nothing, limit=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> continuous_contract_kline_candlestick_data(_api::MarketApi, response_stream::Channel; pair=nothing, contract_type=nothing, interval=nothing, start_time=nothing, end_time=nothing, limit=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

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

**Dict{String, Any}**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **exchange_information**
> exchange_information(_api::MarketApi; _mediaType=nothing) -> ExchangeInfoResponse, OpenAPI.Clients.ApiResponse <br/>
> exchange_information(_api::MarketApi, response_stream::Channel; _mediaType=nothing) -> Channel{ ExchangeInfoResponse }, OpenAPI.Clients.ApiResponse

Exchange Information

Exchange Information

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**ExchangeInfoResponse**](ExchangeInfoResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_funding_rate_history**
> get_funding_rate_history(_api::MarketApi; symbol=nothing, start_time=nothing, end_time=nothing, limit=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> get_funding_rate_history(_api::MarketApi, response_stream::Channel; symbol=nothing, start_time=nothing, end_time=nothing, limit=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

Get Funding Rate History

Mark Price and Funding Rate  Weight: 1

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **MarketApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  | [default to nothing]
 **start_time** | **String**|  | [default to nothing]
 **end_time** | **String**|  | [default to nothing]
 **limit** | **String**|  | [default to nothing]

### Return type

**Dict{String, Any}**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **historical_blvt_nav_kline_candlestick**
> historical_blvt_nav_kline_candlestick(_api::MarketApi; symbol=nothing, interval=nothing, start_time=nothing, end_time=nothing, limit=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> historical_blvt_nav_kline_candlestick(_api::MarketApi, response_stream::Channel; symbol=nothing, interval=nothing, start_time=nothing, end_time=nothing, limit=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

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

**Dict{String, Any}**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **index_price_kline_candlestick_data**
> index_price_kline_candlestick_data(_api::MarketApi; pair=nothing, interval=nothing, start_time=nothing, end_time=nothing, limit=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> index_price_kline_candlestick_data(_api::MarketApi, response_stream::Channel; pair=nothing, interval=nothing, start_time=nothing, end_time=nothing, limit=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

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

**Dict{String, Any}**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **kline_candlestick_data**
> kline_candlestick_data(_api::MarketApi; symbol=nothing, interval=nothing, start_time=nothing, end_time=nothing, limit=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> kline_candlestick_data(_api::MarketApi, response_stream::Channel; symbol=nothing, interval=nothing, start_time=nothing, end_time=nothing, limit=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

Kline/Candlestick Data

Kline/candlestick bars for a symbol. Klines are uniquely identified by their open time.

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

**Dict{String, Any}**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **long_short_ratio**
> long_short_ratio(_api::MarketApi; symbol=nothing, period=nothing, limit=nothing, start_time=nothing, end_time=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> long_short_ratio(_api::MarketApi, response_stream::Channel; symbol=nothing, period=nothing, limit=nothing, start_time=nothing, end_time=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

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

# **mark_price**
> mark_price(_api::MarketApi; symbol=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> mark_price(_api::MarketApi, response_stream::Channel; symbol=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

Mark Price

Mark Price and Funding Rate  Weight: 1

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

# **mark_price_kline_candlestick_data**
> mark_price_kline_candlestick_data(_api::MarketApi; symbol=nothing, interval=nothing, start_time=nothing, end_time=nothing, limit=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> mark_price_kline_candlestick_data(_api::MarketApi, response_stream::Channel; symbol=nothing, interval=nothing, start_time=nothing, end_time=nothing, limit=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

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

**Dict{String, Any}**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **multi_assets_mode_asset_index**
> multi_assets_mode_asset_index(_api::MarketApi; symbol=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> multi_assets_mode_asset_index(_api::MarketApi, response_stream::Channel; symbol=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

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

# **old_trades_lookup_market_data**
> old_trades_lookup_market_data(_api::MarketApi; symbol=nothing, limit=nothing, from_id=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> old_trades_lookup_market_data(_api::MarketApi, response_stream::Channel; symbol=nothing, limit=nothing, from_id=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

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
 **limit** | **String**| Default 500; max 1000. | [default to nothing]
 **from_id** | **String**|  | [default to nothing]
 **x_mbx_apikey** | **String**|  | [default to nothing]

### Return type

**Dict{String, Any}**

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

# **open_interest_statistics**
> open_interest_statistics(_api::MarketApi; symbol=nothing, period=nothing, limit=nothing, start_time=nothing, end_time=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> open_interest_statistics(_api::MarketApi, response_stream::Channel; symbol=nothing, period=nothing, limit=nothing, start_time=nothing, end_time=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

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

# **order_book**
> order_book(_api::MarketApi; symbol=nothing, limit=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> order_book(_api::MarketApi, response_stream::Channel; symbol=nothing, limit=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

Order Book

Order Book

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **MarketApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  | [default to nothing]
 **limit** | **String**| Default 100; max 1000. Valid limits:[5, 10, 20, 50, 100, 500, 1000] | [default to nothing]

### Return type

**Dict{String, Any}**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **query_index_price_constituents**
> query_index_price_constituents(_api::MarketApi; symbol=nothing, pair=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> query_index_price_constituents(_api::MarketApi, response_stream::Channel; symbol=nothing, pair=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

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

# **recent_trades_list**
> recent_trades_list(_api::MarketApi; symbol=nothing, limit=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> recent_trades_list(_api::MarketApi, response_stream::Channel; symbol=nothing, limit=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

Recent Trades List

Recent Trades List

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **MarketApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  | [default to nothing]
 **limit** | **String**| Default 500; max 1000. | [default to nothing]

### Return type

**Dict{String, Any}**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **symbol_order_book_ticker**
> symbol_order_book_ticker(_api::MarketApi; symbol=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> symbol_order_book_ticker(_api::MarketApi, response_stream::Channel; symbol=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

Symbol Order Book Ticker

Best price/qty on the order book for a symbol or symbols.

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

# **symbol_price_ticker_v2**
> symbol_price_ticker_v2(_api::MarketApi; symbol=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> symbol_price_ticker_v2(_api::MarketApi, response_stream::Channel; symbol=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

Symbol Price Ticker V2

Latest price for a symbol or symbols.

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

# **taker_buy_sell_volume**
> taker_buy_sell_volume(_api::MarketApi; symbol=nothing, period=nothing, limit=nothing, start_time=nothing, end_time=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> taker_buy_sell_volume(_api::MarketApi, response_stream::Channel; symbol=nothing, period=nothing, limit=nothing, start_time=nothing, end_time=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

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

# **test_connectivity**
> test_connectivity(_api::MarketApi; _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> test_connectivity(_api::MarketApi, response_stream::Channel; _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

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

# **ticker_price_change_statistics24hr**
> ticker_price_change_statistics24hr(_api::MarketApi; symbol=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> ticker_price_change_statistics24hr(_api::MarketApi, response_stream::Channel; symbol=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

24hr Ticker Price Change Statistics

24 hour rolling window price change statistics.  Careful when accessing this with no symbol.  Weight:  1 for a single symbol;  40 when the symbol parameter is omitted

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

# **top_trader_long_short_ratio_accounts**
> top_trader_long_short_ratio_accounts(_api::MarketApi; symbol=nothing, period=nothing, limit=nothing, start_time=nothing, end_time=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> top_trader_long_short_ratio_accounts(_api::MarketApi, response_stream::Channel; symbol=nothing, period=nothing, limit=nothing, start_time=nothing, end_time=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

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

# **top_trader_long_short_ratio_positions**
> top_trader_long_short_ratio_positions(_api::MarketApi; symbol=nothing, period=nothing, limit=nothing, start_time=nothing, end_time=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> top_trader_long_short_ratio_positions(_api::MarketApi, response_stream::Channel; symbol=nothing, period=nothing, limit=nothing, start_time=nothing, end_time=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

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

