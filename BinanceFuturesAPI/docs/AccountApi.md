# AccountApi

All URIs are relative to *http://}*

Method | HTTP request | Description
------------- | ------------- | -------------
[**account_information**](AccountApi.md#account_information) | **GET** /fapi/v2/account | Account information
[**account_trade_list**](AccountApi.md#account_trade_list) | **GET** /fapi/v1/userTrades | Account Trade List
[**future_account_balance**](AccountApi.md#future_account_balance) | **GET** /fapi/v2/balance | Future Account Balance
[**get_income_history**](AccountApi.md#get_income_history) | **GET** /fapi/v1/income | Get Income History
[**notional_and_leverage_brackets_user_data**](AccountApi.md#notional_and_leverage_brackets_user_data) | **GET** /fapi/v1/leverageBracket | Notional and Leverage Brackets (USER_DATA)
[**position_adl_quantile_estimation_user_data**](AccountApi.md#position_adl_quantile_estimation_user_data) | **GET** /fapi/v1/adlQuantile | Position ADL Quantile Estimation (USER_DATA)
[**position_information**](AccountApi.md#position_information) | **GET** /fapi/v2/positionRisk | Position Information
[**user_commission_rate_user_data**](AccountApi.md#user_commission_rate_user_data) | **GET** /fapi/v1/commissionRate | User Commission Rate (USER_DATA)


# **account_information**
> account_information(_api::AccountApi; recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> account_information(_api::AccountApi, response_stream::Channel; recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Account information

Account information

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

Nothing

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **account_trade_list**
> account_trade_list(_api::AccountApi; symbol=nothing, start_time=nothing, end_time=nothing, from_id=nothing, limit=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> account_trade_list(_api::AccountApi, response_stream::Channel; symbol=nothing, start_time=nothing, end_time=nothing, from_id=nothing, limit=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

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

Nothing

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **future_account_balance**
> future_account_balance(_api::AccountApi; recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> future_account_balance(_api::AccountApi, response_stream::Channel; recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

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

Nothing

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_income_history**
> get_income_history(_api::AccountApi; symbol=nothing, income_type=nothing, start_time=nothing, end_time=nothing, page=nothing, limit=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> get_income_history(_api::AccountApi, response_stream::Channel; symbol=nothing, income_type=nothing, start_time=nothing, end_time=nothing, page=nothing, limit=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

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
 **recv_window** | **String**|  | [default to nothing]
 **timestamp** | **String**|  | [default to nothing]
 **signature** | **String**|  | [default to nothing]
 **x_mbx_apikey** | **String**|  | [default to nothing]

### Return type

Nothing

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **notional_and_leverage_brackets_user_data**
> notional_and_leverage_brackets_user_data(_api::AccountApi; symbol=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> notional_and_leverage_brackets_user_data(_api::AccountApi, response_stream::Channel; symbol=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

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

Nothing

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **position_adl_quantile_estimation_user_data**
> position_adl_quantile_estimation_user_data(_api::AccountApi; symbol=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> position_adl_quantile_estimation_user_data(_api::AccountApi, response_stream::Channel; symbol=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

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

Nothing

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **position_information**
> position_information(_api::AccountApi; symbol=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> position_information(_api::AccountApi, response_stream::Channel; symbol=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

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

Nothing

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **user_commission_rate_user_data**
> user_commission_rate_user_data(_api::AccountApi; symbol=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> user_commission_rate_user_data(_api::AccountApi, response_stream::Channel; symbol=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

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

Nothing

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

