# PortfolioMarginApi

All URIs are relative to *https://fapi.binance.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_p_m_account_info**](PortfolioMarginApi.md#get_p_m_account_info) | **GET** /fapi/v1/pmAccountInfo | Portfolio Margin Account Information


# **get_p_m_account_info**
> get_p_m_account_info(_api::PortfolioMarginApi; asset=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> PortfolioMarginAccountResponse, OpenAPI.Clients.ApiResponse <br/>
> get_p_m_account_info(_api::PortfolioMarginApi, response_stream::Channel; asset=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ PortfolioMarginAccountResponse }, OpenAPI.Clients.ApiResponse

Portfolio Margin Account Information

Portfolio Margin Account Information

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PortfolioMarginApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset** | **String**|  | [default to nothing]
 **recv_window** | **String**| The value cannot be greater than 60000 | [default to nothing]
 **timestamp** | **String**|  | [default to nothing]
 **signature** | **String**|  | [default to nothing]
 **x_mbx_apikey** | **String**|  | [default to nothing]

### Return type

[**PortfolioMarginAccountResponse**](PortfolioMarginAccountResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

