# TradeApi

All URIs are relative to *http://}*

Method | HTTP request | Description
------------- | ------------- | -------------
[**change_initial_leverage**](TradeApi.md#change_initial_leverage) | **POST** /fapi/v1/leverage | Change Initial Leverage
[**change_margin_type**](TradeApi.md#change_margin_type) | **POST** /fapi/v1/marginType | Change Margin Type
[**change_multi_assets_mode**](TradeApi.md#change_multi_assets_mode) | **POST** /fapi/v1/multiAssetsMargin | Change Multi-Assets Mode
[**change_position_mode_trade**](TradeApi.md#change_position_mode_trade) | **POST** /fapi/v1/positionSide/dual | Change Position Mode（TRADE）
[**get_current_multi_assets_mode**](TradeApi.md#get_current_multi_assets_mode) | **GET** /fapi/v1/multiAssetsMargin | Get Current Multi-Assets Mode
[**get_current_position_mode_user_data**](TradeApi.md#get_current_position_mode_user_data) | **GET** /fapi/v1/positionSide/dual | Get Current Position Mode（USER_DATA）
[**get_postion_margin_change_history**](TradeApi.md#get_postion_margin_change_history) | **GET** /fapi/v1/positionMargin/history | Get Postion Margin Change History
[**modify_isolated_position_margin**](TradeApi.md#modify_isolated_position_margin) | **POST** /fapi/v1/positionMargin | Modify Isolated Position Margin


# **change_initial_leverage**
> change_initial_leverage(_api::TradeApi, symbol::String, leverage::Int64; recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> change_initial_leverage(_api::TradeApi, response_stream::Channel, symbol::String, leverage::Int64; recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

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

# **change_margin_type**
> change_margin_type(_api::TradeApi, symbol::String, margin_type::String; recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> change_margin_type(_api::TradeApi, response_stream::Channel, symbol::String, margin_type::String; recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

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

# **change_multi_assets_mode**
> change_multi_assets_mode(_api::TradeApi; multi_assets_margin=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> change_multi_assets_mode(_api::TradeApi, response_stream::Channel; multi_assets_margin=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

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

# **change_position_mode_trade**
> change_position_mode_trade(_api::TradeApi, dual_side_position::Bool; recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> PositionModeResponse, OpenAPI.Clients.ApiResponse <br/>
> change_position_mode_trade(_api::TradeApi, response_stream::Channel, dual_side_position::Bool; recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ PositionModeResponse }, OpenAPI.Clients.ApiResponse

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

# **get_current_multi_assets_mode**
> get_current_multi_assets_mode(_api::TradeApi; recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> get_current_multi_assets_mode(_api::TradeApi, response_stream::Channel; recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

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

# **get_current_position_mode_user_data**
> get_current_position_mode_user_data(_api::TradeApi; recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> PositionModeResponse, OpenAPI.Clients.ApiResponse <br/>
> get_current_position_mode_user_data(_api::TradeApi, response_stream::Channel; recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ PositionModeResponse }, OpenAPI.Clients.ApiResponse

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

# **get_postion_margin_change_history**
> get_postion_margin_change_history(_api::TradeApi, symbol::String, type::Int64; start_time=nothing, end_time=nothing, limit=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Vector{PositionMarginHistoryResponseInner}, OpenAPI.Clients.ApiResponse <br/>
> get_postion_margin_change_history(_api::TradeApi, response_stream::Channel, symbol::String, type::Int64; start_time=nothing, end_time=nothing, limit=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Vector{PositionMarginHistoryResponseInner} }, OpenAPI.Clients.ApiResponse

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

# **modify_isolated_position_margin**
> modify_isolated_position_margin(_api::TradeApi, symbol::String, position_side::String, amount::String, type::Int64; recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> PositionMarginResponse, OpenAPI.Clients.ApiResponse <br/>
> modify_isolated_position_margin(_api::TradeApi, response_stream::Channel, symbol::String, position_side::String, amount::String, type::Int64; recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ PositionMarginResponse }, OpenAPI.Clients.ApiResponse

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

