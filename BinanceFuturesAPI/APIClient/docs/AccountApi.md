# AccountApi

All URIs are relative to *https://fapi.binance.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**account_information**](AccountApi.md#account_information) | **GET** /fapi/v2/account | Account information
[**account_trade_list**](AccountApi.md#account_trade_list) | **GET** /fapi/v1/userTrades | Account Trade List
[**fapi_v1_api_trading_status_get**](AccountApi.md#fapi_v1_api_trading_status_get) | **GET** /fapi/v1/apiTradingStatus | Account API Trading Status
[**future_account_balance**](AccountApi.md#future_account_balance) | **GET** /fapi/v2/balance | Future Account Balance
[**get_income_history**](AccountApi.md#get_income_history) | **GET** /fapi/v1/income | Get Income History
[**notional_and_leverage_brackets_user_data**](AccountApi.md#notional_and_leverage_brackets_user_data) | **GET** /fapi/v1/leverageBracket | Notional and Leverage Brackets (USER_DATA)
[**position_adl_quantile_estimation_user_data**](AccountApi.md#position_adl_quantile_estimation_user_data) | **GET** /fapi/v1/adlQuantile | Position ADL Quantile Estimation (USER_DATA)
[**position_information**](AccountApi.md#position_information) | **GET** /fapi/v2/positionRisk | Position Information
[**user_commission_rate_user_data**](AccountApi.md#user_commission_rate_user_data) | **GET** /fapi/v1/commissionRate | User Commission Rate (USER_DATA)


# **account_information**
> account_information(_api::AccountApi, timestamp::Int64; recv_window=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> account_information(_api::AccountApi, response_stream::Channel, timestamp::Int64; recv_window=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

Account information

Account information

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **AccountApi** | API context | 
**timestamp** | **Int64**| Current timestamp in milliseconds | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **recv_window** | **Int64**| The value cannot be greater than 60000. Defines how long an order request is valid for in milliseconds. Default: 5000  | [default to 5000]
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

# **account_trade_list**
> account_trade_list(_api::AccountApi; symbol=nothing, start_time=nothing, end_time=nothing, from_id=nothing, limit=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> account_trade_list(_api::AccountApi, response_stream::Channel; symbol=nothing, start_time=nothing, end_time=nothing, from_id=nothing, limit=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

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

**Dict{String, Any}**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **fapi_v1_api_trading_status_get**
> fapi_v1_api_trading_status_get(_api::AccountApi, timestamp::Int64; symbol=nothing, recv_window=nothing, _mediaType=nothing) -> ApiTradingStatusResponse, OpenAPI.Clients.ApiResponse <br/>
> fapi_v1_api_trading_status_get(_api::AccountApi, response_stream::Channel, timestamp::Int64; symbol=nothing, recv_window=nothing, _mediaType=nothing) -> Channel{ ApiTradingStatusResponse }, OpenAPI.Clients.ApiResponse

Account API Trading Status

Get current account's trading status on futures. Weight: 1 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **AccountApi** | API context | 
**timestamp** | **Int64**| Current timestamp in milliseconds | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Trading pair symbol (e.g., BTCUSDT). If not sent, returns status for all symbols | [default to nothing]
 **recv_window** | **Int64**| The value cannot be greater than 60000. Defines how long the request is valid for in milliseconds. Default: 5000  | [default to 5000]

### Return type

[**ApiTradingStatusResponse**](ApiTradingStatusResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **future_account_balance**
> future_account_balance(_api::AccountApi; recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> future_account_balance(_api::AccountApi, response_stream::Channel; recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

Future Account Balance

Future Account Balance

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **AccountApi** | API context | 

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

# **get_income_history**
> get_income_history(_api::AccountApi; symbol=nothing, income_type=nothing, start_time=nothing, end_time=nothing, page=nothing, limit=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> get_income_history(_api::AccountApi, response_stream::Channel; symbol=nothing, income_type=nothing, start_time=nothing, end_time=nothing, page=nothing, limit=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

Get Income History

Get Income History

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **AccountApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  | [default to nothing]
 **income_type** | **String**|  | [default to nothing]
 **start_time** | **String**|  | [default to nothing]
 **end_time** | **String**|  | [default to nothing]
 **page** | **String**|  | [default to nothing]
 **limit** | **String**| The value cannot be greater than 60000 | [default to nothing]
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

# **notional_and_leverage_brackets_user_data**
> notional_and_leverage_brackets_user_data(_api::AccountApi; symbol=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> notional_and_leverage_brackets_user_data(_api::AccountApi, response_stream::Channel; symbol=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

Notional and Leverage Brackets (USER_DATA)

Get present open interest of a specific symbol.

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

# **position_adl_quantile_estimation_user_data**
> position_adl_quantile_estimation_user_data(_api::AccountApi; symbol=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> position_adl_quantile_estimation_user_data(_api::AccountApi, response_stream::Channel; symbol=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

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

# **position_information**
> position_information(_api::AccountApi; symbol=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> position_information(_api::AccountApi, response_stream::Channel; symbol=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

Position Information

Position Information

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **AccountApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  | [default to nothing]
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

# **user_commission_rate_user_data**
> user_commission_rate_user_data(_api::AccountApi; symbol=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> user_commission_rate_user_data(_api::AccountApi, response_stream::Channel; symbol=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

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

