# TradeApi

All URIs are relative to *https://fapi.binance.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_position_margin_history**](TradeApi.md#get_position_margin_history) | **GET** /fapi/v1/positionMargin/history | Get Postion Margin Change History
[**get_position_side_dual**](TradeApi.md#get_position_side_dual) | **GET** /fapi/v1/positionSide/dual | Get Current Position Mode（USER_DATA）
[**multi_assets_margin**](TradeApi.md#multi_assets_margin) | **GET** /fapi/v1/multiAssetsMargin | Get Current Multi-Assets Mode
[**post_leverage**](TradeApi.md#post_leverage) | **POST** /fapi/v1/leverage | Change Initial Leverage
[**post_margin_type**](TradeApi.md#post_margin_type) | **POST** /fapi/v1/marginType | Change Margin Type
[**post_multi_assets_margin**](TradeApi.md#post_multi_assets_margin) | **POST** /fapi/v1/multiAssetsMargin | Change Multi-Assets Mode
[**post_position_margin**](TradeApi.md#post_position_margin) | **POST** /fapi/v1/positionMargin | Modify Isolated Position Margin
[**post_position_side_dual**](TradeApi.md#post_position_side_dual) | **POST** /fapi/v1/positionSide/dual | Change Position Mode（TRADE）


# **get_position_margin_history**
> get_position_margin_history(_api::TradeApi, symbol::String, type::Int64; start_time=nothing, end_time=nothing, limit=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Vector{PositionMarginHistoryResponseInner}, OpenAPI.Clients.ApiResponse <br/>
> get_position_margin_history(_api::TradeApi, response_stream::Channel, symbol::String, type::Int64; start_time=nothing, end_time=nothing, limit=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Vector{PositionMarginHistoryResponseInner} }, OpenAPI.Clients.ApiResponse

Get Postion Margin Change History

Get Postion Margin Change History

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **TradeApi** | API context | 
**symbol** | **String**| Trading pair symbol (e.g., BTCUSDT) | [default to nothing]
**type** | **Int64**| Margin type (1: Add, 2: Reduce)  | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_time** | **String**|  | [default to nothing]
 **end_time** | **String**|  | [default to nothing]
 **limit** | **String**|  | [default to nothing]
 **recv_window** | **String**| The value cannot be greater than 60000 | [default to nothing]
 **timestamp** | **String**|  | [default to nothing]
 **signature** | **String**|  | [default to nothing]
 **x_mbx_apikey** | **String**|  | [default to nothing]

### Return type

[**Vector{PositionMarginHistoryResponseInner}**](PositionMarginHistoryResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_position_side_dual**
> get_position_side_dual(_api::TradeApi; recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> PositionModeResponse, OpenAPI.Clients.ApiResponse <br/>
> get_position_side_dual(_api::TradeApi, response_stream::Channel; recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ PositionModeResponse }, OpenAPI.Clients.ApiResponse

Get Current Position Mode（USER_DATA）

Get Current Position Mode（USER_DATA）

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **TradeApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **recv_window** | **String**| The value cannot be greater than 60000 | [default to nothing]
 **timestamp** | **String**|  | [default to nothing]
 **signature** | **String**|  | [default to nothing]
 **x_mbx_apikey** | **String**|  | [default to nothing]

### Return type

[**PositionModeResponse**](PositionModeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **multi_assets_margin**
> multi_assets_margin(_api::TradeApi; recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> multi_assets_margin(_api::TradeApi, response_stream::Channel; recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

Get Current Multi-Assets Mode

Get Current Multi-Assets Mode

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **TradeApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **recv_window** | **String**|  | [default to nothing]
 **timestamp** | **String**|  | [default to nothing]
 **signature** | **String**|  | [default to nothing]
 **x_mbx_apikey** | **String**|  | [default to nothing]

### Return type

**Dict{String, Any}**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **post_leverage**
> post_leverage(_api::TradeApi, symbol::String, leverage::Int64; recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> post_leverage(_api::TradeApi, response_stream::Channel, symbol::String, leverage::Int64; recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

Change Initial Leverage

Change Initial Leverage

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **TradeApi** | API context | 
**symbol** | **String**| Trading pair symbol (e.g., BTCUSDT) | [default to nothing]
**leverage** | **Int64**| Target leverage value. Must be between the minimum and maximum leverage allowed for the symbol.  | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **recv_window** | **String**| The value cannot be greater than 60000 | [default to nothing]
 **timestamp** | **String**|  | [default to nothing]
 **signature** | **String**|  | [default to nothing]
 **x_mbx_apikey** | **String**|  | [default to nothing]

### Return type

**Dict{String, Any}**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **post_margin_type**
> post_margin_type(_api::TradeApi, symbol::String, margin_type::String; recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> post_margin_type(_api::TradeApi, response_stream::Channel, symbol::String, margin_type::String; recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

Change Margin Type

Change Margin Type

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **TradeApi** | API context | 
**symbol** | **String**| Trading pair symbol (e.g., BTCUSDT) | [default to nothing]
**margin_type** | **String**| Target margin type. ISOLATED or CROSS  | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **recv_window** | **String**| The value cannot be greater than 60000 | [default to nothing]
 **timestamp** | **String**|  | [default to nothing]
 **signature** | **String**|  | [default to nothing]
 **x_mbx_apikey** | **String**|  | [default to nothing]

### Return type

**Dict{String, Any}**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **post_multi_assets_margin**
> post_multi_assets_margin(_api::TradeApi; multi_assets_margin=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> post_multi_assets_margin(_api::TradeApi, response_stream::Channel; multi_assets_margin=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

Change Multi-Assets Mode

Change Multi-Assets Mode

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **TradeApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **multi_assets_margin** | **String**|  | [default to nothing]
 **recv_window** | **String**|  | [default to nothing]
 **timestamp** | **String**|  | [default to nothing]
 **signature** | **String**|  | [default to nothing]
 **x_mbx_apikey** | **String**|  | [default to nothing]

### Return type

**Dict{String, Any}**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **post_position_margin**
> post_position_margin(_api::TradeApi, symbol::String, position_side::String, amount::String, type::Int64; recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> PositionMarginResponse, OpenAPI.Clients.ApiResponse <br/>
> post_position_margin(_api::TradeApi, response_stream::Channel, symbol::String, position_side::String, amount::String, type::Int64; recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ PositionMarginResponse }, OpenAPI.Clients.ApiResponse

Modify Isolated Position Margin

Modify Isolated Position Margin

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **TradeApi** | API context | 
**symbol** | **String**| Trading pair symbol (e.g., BTCUSDT) | [default to nothing]
**position_side** | **String**| Position side (BOTH/LONG/SHORT) | [default to nothing]
**amount** | **String**| Amount of margin | [default to nothing]
**type** | **Int64**| Margin type (1: Add, 2: Reduce)  | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **recv_window** | **String**| The value cannot be greater than 60000 | [default to nothing]
 **timestamp** | **String**|  | [default to nothing]
 **signature** | **String**|  | [default to nothing]
 **x_mbx_apikey** | **String**|  | [default to nothing]

### Return type

[**PositionMarginResponse**](PositionMarginResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **post_position_side_dual**
> post_position_side_dual(_api::TradeApi, dual_side_position::Bool; recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> PositionModeResponse, OpenAPI.Clients.ApiResponse <br/>
> post_position_side_dual(_api::TradeApi, response_stream::Channel, dual_side_position::Bool; recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ PositionModeResponse }, OpenAPI.Clients.ApiResponse

Change Position Mode（TRADE）

Change Position Mode（TRADE）

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **TradeApi** | API context | 
**dual_side_position** | **Bool**| Boolean value. \&quot;true\&quot;: Hedge Mode mode; \&quot;false\&quot;: One-way Mode | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **recv_window** | **String**| The value cannot be greater than 60000 | [default to nothing]
 **timestamp** | **String**|  | [default to nothing]
 **signature** | **String**|  | [default to nothing]
 **x_mbx_apikey** | **String**|  | [default to nothing]

### Return type

[**PositionModeResponse**](PositionModeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

