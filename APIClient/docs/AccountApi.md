# AccountApi

All URIs are relative to *https://fapi.binance.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**account**](AccountApi.md#account) | **GET** /fapi/v3/account | Account information
[**adl_quantile**](AccountApi.md#adl_quantile) | **GET** /fapi/v1/adlQuantile | Position ADL Quantile Estimation (USER_DATA)
[**api_trading_status**](AccountApi.md#api_trading_status) | **GET** /fapi/v1/apiTradingStatus | Account API Trading Status
[**balance**](AccountApi.md#balance) | **GET** /fapi/v3/balance | Future Account Balance
[**commission_rate**](AccountApi.md#commission_rate) | **GET** /fapi/v1/commissionRate | User Commission Rate (USER_DATA)
[**income**](AccountApi.md#income) | **GET** /fapi/v1/income | Get Income History
[**leverage_bracket**](AccountApi.md#leverage_bracket) | **GET** /fapi/v1/leverageBracket | Notional and Leverage Brackets
[**position_risk**](AccountApi.md#position_risk) | **GET** /fapi/v3/positionRisk | Position Risk
[**user_trades**](AccountApi.md#user_trades) | **GET** /fapi/v1/userTrades | Account Trade List


# **account**
> account(_api::AccountApi; recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Account200Response, OpenAPI.Clients.ApiResponse <br/>
> account(_api::AccountApi, response_stream::Channel; recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Account200Response }, OpenAPI.Clients.ApiResponse

Account information

Account information

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **AccountApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **recv_window** | **Int64**| The value cannot be greater than 60000. Defines how long an order request is valid for in milliseconds. Default: 5000  | [default to 5000]
 **timestamp** | **Int64**| Current timestamp in milliseconds | [default to nothing]
 **signature** | **String**|  | [default to nothing]
 **x_mbx_apikey** | **String**|  | [default to nothing]

### Return type

[**Account200Response**](Account200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **adl_quantile**
> adl_quantile(_api::AccountApi; symbol=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> adl_quantile(_api::AccountApi, response_stream::Channel; symbol=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

Position ADL Quantile Estimation (USER_DATA)

Position ADL Quantile Estimation (USER_DATA)

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **AccountApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  | [default to nothing]
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

# **api_trading_status**
> api_trading_status(_api::AccountApi; symbol=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> ApiTradingStatusResponse, OpenAPI.Clients.ApiResponse <br/>
> api_trading_status(_api::AccountApi, response_stream::Channel; symbol=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ ApiTradingStatusResponse }, OpenAPI.Clients.ApiResponse

Account API Trading Status

Get current account's trading status on futures. Weight: 1 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **AccountApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Trading pair symbol (e.g., BTCUSDT). If not sent, returns status for all symbols | [default to nothing]
 **recv_window** | **Int64**| The value cannot be greater than 60000. Defines how long the request is valid for in milliseconds. Default: 5000  | [default to 5000]
 **timestamp** | **Int64**| Current timestamp in milliseconds | [default to nothing]
 **signature** | **String**|  | [default to nothing]
 **x_mbx_apikey** | **String**|  | [default to nothing]

### Return type

[**ApiTradingStatusResponse**](ApiTradingStatusResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **balance**
> balance(_api::AccountApi; recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Vector{Balance200ResponseInner}, OpenAPI.Clients.ApiResponse <br/>
> balance(_api::AccountApi, response_stream::Channel; recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Vector{Balance200ResponseInner} }, OpenAPI.Clients.ApiResponse

Future Account Balance

Get Future Account Balance

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **AccountApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **recv_window** | **Int64**| The value cannot be greater than 60000 | [default to 5000]
 **timestamp** | **Int64**| Current timestamp in milliseconds | [default to nothing]
 **signature** | **String**| Signature | [default to nothing]
 **x_mbx_apikey** | **String**| API Key | [default to nothing]

### Return type

[**Vector{Balance200ResponseInner}**](Balance200ResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **commission_rate**
> commission_rate(_api::AccountApi; symbol=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> commission_rate(_api::AccountApi, response_stream::Channel; symbol=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

User Commission Rate (USER_DATA)

User Commission Rate (USER_DATA)

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **AccountApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  | [default to nothing]
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

# **income**
> income(_api::AccountApi; symbol=nothing, income_type=nothing, start_time=nothing, end_time=nothing, limit=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Vector{Income200ResponseInner}, OpenAPI.Clients.ApiResponse <br/>
> income(_api::AccountApi, response_stream::Channel; symbol=nothing, income_type=nothing, start_time=nothing, end_time=nothing, limit=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Vector{Income200ResponseInner} }, OpenAPI.Clients.ApiResponse

Get Income History

Get income history from futures account

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **AccountApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Trading pair | [default to nothing]
 **income_type** | **String**| Income type | [default to nothing]
 **start_time** | **Int64**| Start time in ms | [default to nothing]
 **end_time** | **Int64**| End time in ms | [default to nothing]
 **limit** | **Int64**| Default 100; max 1000 | [default to 100]
 **recv_window** | **Int64**| The value cannot be greater than 60000 | [default to 5000]
 **timestamp** | **Int64**| Current timestamp in milliseconds | [default to nothing]
 **signature** | **String**|  | [default to nothing]
 **x_mbx_apikey** | **String**| API Key | [default to nothing]

### Return type

[**Vector{Income200ResponseInner}**](Income200ResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **leverage_bracket**
> leverage_bracket(_api::AccountApi; symbol=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Vector{LeverageBracket200ResponseInner}, OpenAPI.Clients.ApiResponse <br/>
> leverage_bracket(_api::AccountApi, response_stream::Channel; symbol=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Vector{LeverageBracket200ResponseInner} }, OpenAPI.Clients.ApiResponse

Notional and Leverage Brackets

Get notional and leverage brackets

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **AccountApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Trading pair | [default to nothing]
 **recv_window** | **Int64**| The value cannot be greater than 60000 | [default to 5000]
 **timestamp** | **Int64**| Current timestamp in milliseconds | [default to nothing]
 **signature** | **String**| Signature | [default to nothing]
 **x_mbx_apikey** | **String**| API Key | [default to nothing]

### Return type

[**Vector{LeverageBracket200ResponseInner}**](LeverageBracket200ResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **position_risk**
> position_risk(_api::AccountApi; recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Vector{PositionRisk200ResponseInner}, OpenAPI.Clients.ApiResponse <br/>
> position_risk(_api::AccountApi, response_stream::Channel; recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Vector{PositionRisk200ResponseInner} }, OpenAPI.Clients.ApiResponse

Position Risk

Get Position Risk of all symbols

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **AccountApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **recv_window** | **Int64**| The value cannot be greater than 60000 | [default to 5000]
 **timestamp** | **Int64**| Current timestamp in milliseconds | [default to nothing]
 **signature** | **String**| Signature | [default to nothing]
 **x_mbx_apikey** | **String**| API Key | [default to nothing]

### Return type

[**Vector{PositionRisk200ResponseInner}**](PositionRisk200ResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **user_trades**
> user_trades(_api::AccountApi; symbol=nothing, start_time=nothing, end_time=nothing, from_id=nothing, limit=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Vector{UserTrades200ResponseInner}, OpenAPI.Clients.ApiResponse <br/>
> user_trades(_api::AccountApi, response_stream::Channel; symbol=nothing, start_time=nothing, end_time=nothing, from_id=nothing, limit=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Vector{UserTrades200ResponseInner} }, OpenAPI.Clients.ApiResponse

Account Trade List

Account Trade List

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **AccountApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  | [default to nothing]
 **start_time** | **String**|  | [default to nothing]
 **end_time** | **String**|  | [default to nothing]
 **from_id** | **String**|  | [default to nothing]
 **limit** | **String**|  | [default to nothing]
 **recv_window** | **String**| The value cannot be greater than 60000 | [default to nothing]
 **timestamp** | **String**|  | [default to nothing]
 **signature** | **String**|  | [default to nothing]
 **x_mbx_apikey** | **String**|  | [default to nothing]

### Return type

[**Vector{UserTrades200ResponseInner}**](UserTrades200ResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

