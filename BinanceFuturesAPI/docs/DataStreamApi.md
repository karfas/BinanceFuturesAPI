# DataStreamApi

All URIs are relative to *http://}*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_new_listen_key**](DataStreamApi.md#create_new_listen_key) | **POST** /fapi/v1/listenKey | Create New Listen Key
[**delete_listen_key**](DataStreamApi.md#delete_listen_key) | **DELETE** /fapi/v1/listenKey | Delete Listen Key
[**renew_listen_key**](DataStreamApi.md#renew_listen_key) | **PUT** /fapi/v1/listenKey | Renew Listen Key


# **create_new_listen_key**
> create_new_listen_key(_api::DataStreamApi; x_mbx_apikey=nothing, _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> create_new_listen_key(_api::DataStreamApi, response_stream::Channel; x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Create New Listen Key

Create New Listen Key

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **DataStreamApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_mbx_apikey** | **String**|  | [default to nothing]

### Return type

Nothing

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **delete_listen_key**
> delete_listen_key(_api::DataStreamApi; x_mbx_apikey=nothing, _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> delete_listen_key(_api::DataStreamApi, response_stream::Channel; x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Delete Listen Key

Delete Listen Key

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **DataStreamApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_mbx_apikey** | **String**|  | [default to nothing]

### Return type

Nothing

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **renew_listen_key**
> renew_listen_key(_api::DataStreamApi; x_mbx_apikey=nothing, _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> renew_listen_key(_api::DataStreamApi, response_stream::Channel; x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Renew Listen Key

Renew Listen Key

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **DataStreamApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_mbx_apikey** | **String**|  | [default to nothing]

### Return type

Nothing

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

