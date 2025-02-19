# DataStreamApi

All URIs are relative to *https://fapi.binance.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_listen_key**](DataStreamApi.md#delete_listen_key) | **DELETE** /fapi/v1/listenKey | Delete Listen Key
[**post_listen_key**](DataStreamApi.md#post_listen_key) | **POST** /fapi/v1/listenKey | Create New Listen Key
[**put_listen_key**](DataStreamApi.md#put_listen_key) | **PUT** /fapi/v1/listenKey | Renew Listen Key


# **delete_listen_key**
> delete_listen_key(_api::DataStreamApi; x_mbx_apikey=nothing, _mediaType=nothing) -> ListenKeyResponse, OpenAPI.Clients.ApiResponse <br/>
> delete_listen_key(_api::DataStreamApi, response_stream::Channel; x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ ListenKeyResponse }, OpenAPI.Clients.ApiResponse

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

[**ListenKeyResponse**](ListenKeyResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **post_listen_key**
> post_listen_key(_api::DataStreamApi; x_mbx_apikey=nothing, _mediaType=nothing) -> ListenKeyResponse, OpenAPI.Clients.ApiResponse <br/>
> post_listen_key(_api::DataStreamApi, response_stream::Channel; x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ ListenKeyResponse }, OpenAPI.Clients.ApiResponse

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

[**ListenKeyResponse**](ListenKeyResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **put_listen_key**
> put_listen_key(_api::DataStreamApi; x_mbx_apikey=nothing, _mediaType=nothing) -> ListenKeyResponse, OpenAPI.Clients.ApiResponse <br/>
> put_listen_key(_api::DataStreamApi, response_stream::Channel; x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ ListenKeyResponse }, OpenAPI.Clients.ApiResponse

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

[**ListenKeyResponse**](ListenKeyResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

