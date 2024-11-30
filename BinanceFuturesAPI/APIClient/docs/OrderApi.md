# OrderApi

All URIs are relative to *http://}*

Method | HTTP request | Description
------------- | ------------- | -------------
[**all_orders**](OrderApi.md#all_orders) | **GET** /fapi/v1/allOrders | All Orders
[**auto_cancel_all_open_orders_trade**](OrderApi.md#auto_cancel_all_open_orders_trade) | **POST** /fapi/v1/countdownCancelAll | Auto-Cancel All Open Orders (TRADE)
[**cancel_all_open_orders**](OrderApi.md#cancel_all_open_orders) | **DELETE** /fapi/v1/allOpenOrders | Cancel All Open Orders
[**cancel_multiple_orders_trade**](OrderApi.md#cancel_multiple_orders_trade) | **DELETE** /fapi/v1/batchOrders | Cancel Multiple Orders (TRADE)
[**cancel_order**](OrderApi.md#cancel_order) | **DELETE** /fapi/v1/order | Cancel Order
[**current_all_open_orders_user_data**](OrderApi.md#current_all_open_orders_user_data) | **GET** /fapi/v1/openOrders | Current All Open Orders (USER_DATA)
[**get_download_id_for_futures_order_history_user_data**](OrderApi.md#get_download_id_for_futures_order_history_user_data) | **GET** /fapi/v1/order/asyn | Get Download Id For Futures Order History (USER_DATA)
[**get_download_id_for_futures_trade_history_user_data**](OrderApi.md#get_download_id_for_futures_trade_history_user_data) | **GET** /fapi/v1/trade/asyn | Get Download Id For Futures Trade History (USER_DATA)
[**get_futures_order_history_download_link_by_id_user_data**](OrderApi.md#get_futures_order_history_download_link_by_id_user_data) | **GET** /fapi/v1/order/asyn/id | Get Futures Order History Download Link by Id (USER_DATA)
[**get_futures_trade_download_link_by_id_user_data**](OrderApi.md#get_futures_trade_download_link_by_id_user_data) | **GET** /fapi/v1/trade/asyn/id | Get Futures Trade Download Link by Id (USER_DATA)
[**get_order_modify_history_user_data**](OrderApi.md#get_order_modify_history_user_data) | **GET** /fapi/v1/orderAmendment | Get Order Modify History (USER_DATA)
[**modify_multiple_orders_trade**](OrderApi.md#modify_multiple_orders_trade) | **PUT** /fapi/v1/batchOrders | Modify Multiple Orders (TRADE)
[**modify_order_trade**](OrderApi.md#modify_order_trade) | **PUT** /fapi/v1/order | Modify Order (TRADE)
[**new_order_trade**](OrderApi.md#new_order_trade) | **POST** /fapi/v1/order | New Order (TRADE)
[**place_multiple_orders_trade**](OrderApi.md#place_multiple_orders_trade) | **POST** /fapi/v1/batchOrders | Place Multiple Orders (TRADE)
[**query_current_open_order_user_data**](OrderApi.md#query_current_open_order_user_data) | **GET** /fapi/v1/openOrder | Query Current Open Order (USER_DATA)
[**query_order**](OrderApi.md#query_order) | **GET** /fapi/v1/order | Query Order
[**user_s_force_orders_user_data**](OrderApi.md#user_s_force_orders_user_data) | **GET** /fapi/v1/forceOrders | User&#39;s Force Orders (USER_DATA)


# **all_orders**
> all_orders(_api::OrderApi; symbol=nothing, order_id=nothing, start_time=nothing, end_time=nothing, limit=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> all_orders(_api::OrderApi, response_stream::Channel; symbol=nothing, order_id=nothing, start_time=nothing, end_time=nothing, limit=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

All Orders

All Orders

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **OrderApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  | [default to nothing]
 **order_id** | **String**|  | [default to nothing]
 **start_time** | **String**|  | [default to nothing]
 **end_time** | **String**|  | [default to nothing]
 **limit** | **String**| Default 500; max 1000. | [default to nothing]
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

# **auto_cancel_all_open_orders_trade**
> auto_cancel_all_open_orders_trade(_api::OrderApi; symbol=nothing, countdown_time=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> auto_cancel_all_open_orders_trade(_api::OrderApi, response_stream::Channel; symbol=nothing, countdown_time=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

Auto-Cancel All Open Orders (TRADE)

Auto-Cancel All Open Orders (TRADE)

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **OrderApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  | [default to nothing]
 **countdown_time** | **String**| countdown time, 1000 for 1 second. 0 to cancel the timer | [default to nothing]
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

# **cancel_all_open_orders**
> cancel_all_open_orders(_api::OrderApi; symbol=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> cancel_all_open_orders(_api::OrderApi, response_stream::Channel; symbol=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

Cancel All Open Orders

Cancel All Open Orders

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **OrderApi** | API context | 

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

# **cancel_multiple_orders_trade**
> cancel_multiple_orders_trade(_api::OrderApi; symbol=nothing, order_id_list=nothing, orig_client_order_id_list=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> cancel_multiple_orders_trade(_api::OrderApi, response_stream::Channel; symbol=nothing, order_id_list=nothing, orig_client_order_id_list=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

Cancel Multiple Orders (TRADE)

Cancel Multiple Orders (TRADE)

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **OrderApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  | [default to nothing]
 **order_id_list** | **String**| [id,id]  no space in between | [default to nothing]
 **orig_client_order_id_list** | **String**|  | [default to nothing]
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

# **cancel_order**
> cancel_order(_api::OrderApi; symbol=nothing, order_id=nothing, orig_client_order_id=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> cancel_order(_api::OrderApi, response_stream::Channel; symbol=nothing, order_id=nothing, orig_client_order_id=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

Cancel Order

Cancel Order

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **OrderApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  | [default to nothing]
 **order_id** | **String**|  | [default to nothing]
 **orig_client_order_id** | **String**|  | [default to nothing]
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

# **current_all_open_orders_user_data**
> current_all_open_orders_user_data(_api::OrderApi; symbol=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> current_all_open_orders_user_data(_api::OrderApi, response_stream::Channel; symbol=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

Current All Open Orders (USER_DATA)

Current All Open Orders (USER_DATA)

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **OrderApi** | API context | 

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

# **get_download_id_for_futures_order_history_user_data**
> get_download_id_for_futures_order_history_user_data(_api::OrderApi; start_time=nothing, end_time=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> get_download_id_for_futures_order_history_user_data(_api::OrderApi, response_stream::Channel; start_time=nothing, end_time=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

Get Download Id For Futures Order History (USER_DATA)

Request Limitation is 10 times per month, shared by front end download page and rest api The time between startTime and endTime can not be longer than 1 year Weight: 5

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **OrderApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_time** | **String**| Timestamp in ms | [default to nothing]
 **end_time** | **String**| Timestamp in ms | [default to nothing]
 **recv_window** | **String**| The value cannot be greater than 60000 | [default to nothing]
 **timestamp** | **String**|  | [default to nothing]
 **signature** | **String**| Default BOTH for One-way Mode ; LONG or SHORT for Hedge Mode. It must be sent with Hedge Mode. | [default to nothing]
 **x_mbx_apikey** | **String**|  | [default to nothing]

### Return type

**Dict{String, Any}**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_download_id_for_futures_trade_history_user_data**
> get_download_id_for_futures_trade_history_user_data(_api::OrderApi; start_time=nothing, end_time=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> get_download_id_for_futures_trade_history_user_data(_api::OrderApi, response_stream::Channel; start_time=nothing, end_time=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

Get Download Id For Futures Trade History (USER_DATA)

Request Limitation is 5 times per month, shared by front end download page and rest api The time between startTime and endTime can not be longer than 1 year Weight: 5

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **OrderApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_time** | **String**| Timestamp in ms | [default to nothing]
 **end_time** | **String**| Timestamp in ms | [default to nothing]
 **recv_window** | **String**| The value cannot be greater than 60000 | [default to nothing]
 **timestamp** | **String**|  | [default to nothing]
 **signature** | **String**| Default BOTH for One-way Mode ; LONG or SHORT for Hedge Mode. It must be sent with Hedge Mode. | [default to nothing]
 **x_mbx_apikey** | **String**|  | [default to nothing]

### Return type

**Dict{String, Any}**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_futures_order_history_download_link_by_id_user_data**
> get_futures_order_history_download_link_by_id_user_data(_api::OrderApi; download_id=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> get_futures_order_history_download_link_by_id_user_data(_api::OrderApi, response_stream::Channel; download_id=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

Get Futures Order History Download Link by Id (USER_DATA)

Download link expiration: 24h Weight: 5

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **OrderApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **download_id** | **String**| get by download id api | [default to nothing]
 **recv_window** | **String**| The value cannot be greater than 60000 | [default to nothing]
 **timestamp** | **String**|  | [default to nothing]
 **signature** | **String**| Default BOTH for One-way Mode ; LONG or SHORT for Hedge Mode. It must be sent with Hedge Mode. | [default to nothing]
 **x_mbx_apikey** | **String**|  | [default to nothing]

### Return type

**Dict{String, Any}**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_futures_trade_download_link_by_id_user_data**
> get_futures_trade_download_link_by_id_user_data(_api::OrderApi; download_id=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> get_futures_trade_download_link_by_id_user_data(_api::OrderApi, response_stream::Channel; download_id=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

Get Futures Trade Download Link by Id (USER_DATA)

Download link expiration: 24h Weight: 5

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **OrderApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **download_id** | **String**| Timestamp in ms | [default to nothing]
 **recv_window** | **String**| The value cannot be greater than 60000 | [default to nothing]
 **timestamp** | **String**|  | [default to nothing]
 **signature** | **String**| Default BOTH for One-way Mode ; LONG or SHORT for Hedge Mode. It must be sent with Hedge Mode. | [default to nothing]
 **x_mbx_apikey** | **String**|  | [default to nothing]

### Return type

**Dict{String, Any}**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_order_modify_history_user_data**
> get_order_modify_history_user_data(_api::OrderApi; symbol=nothing, order_id=nothing, orig_client_order_id=nothing, start_time=nothing, end_time=nothing, limit=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> get_order_modify_history_user_data(_api::OrderApi, response_stream::Channel; symbol=nothing, order_id=nothing, orig_client_order_id=nothing, start_time=nothing, end_time=nothing, limit=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

Get Order Modify History (USER_DATA)

Get order modification history Either orderId or origClientOrderId must be sent, and the orderId will prevail if both are sent.  Weight: 1

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **OrderApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  | [default to nothing]
 **order_id** | **String**|  | [default to nothing]
 **orig_client_order_id** | **String**|  | [default to nothing]
 **start_time** | **String**| Timestamp in ms to get modification history from INCLUSIVE | [default to nothing]
 **end_time** | **String**| Timestamp in ms to get modification history from INCLUSIVE | [default to nothing]
 **limit** | **String**| Default 50; max 100 | [default to nothing]
 **recv_window** | **String**| The value cannot be greater than 60000 | [default to nothing]
 **timestamp** | **String**|  | [default to nothing]
 **signature** | **String**| Default BOTH for One-way Mode ; LONG or SHORT for Hedge Mode. It must be sent with Hedge Mode. | [default to nothing]
 **x_mbx_apikey** | **String**|  | [default to nothing]

### Return type

**Dict{String, Any}**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **modify_multiple_orders_trade**
> modify_multiple_orders_trade(_api::OrderApi; batch_orders=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> modify_multiple_orders_trade(_api::OrderApi, response_stream::Channel; batch_orders=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

Modify Multiple Orders (TRADE)

Modify Multiple Orders (TRADE)

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **OrderApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch_orders** | **String**| order list. Max 5 orders | [default to nothing]
 **recv_window** | **String**| The value cannot be greater than 60000 | [default to nothing]
 **timestamp** | **String**|  | [default to nothing]
 **signature** | **String**| Default BOTH for One-way Mode ; LONG or SHORT for Hedge Mode. It must be sent with Hedge Mode. | [default to nothing]
 **x_mbx_apikey** | **String**|  | [default to nothing]

### Return type

**Dict{String, Any}**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **modify_order_trade**
> modify_order_trade(_api::OrderApi; order_id=nothing, orig_client_order_id=nothing, symbol=nothing, side=nothing, quantity=nothing, price=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> modify_order_trade(_api::OrderApi, response_stream::Channel; order_id=nothing, orig_client_order_id=nothing, symbol=nothing, side=nothing, quantity=nothing, price=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

Modify Order (TRADE)

Either orderId or origClientOrderId must be sent, and the orderId will prevail if both are sent. Both quantity and price must be sent, which is different from dapi modify order endpoint. When the new quantity or price doesn't satisfy PRICE_FILTER / PERCENT_FILTER / LOT_SIZE, amendment will be rejected and the order will stay as it is. However the order will be cancelled by the amendment in the following situations: - when the order is in partially filled status and the new quantity <= executedQty - When the order is GTX and the new price will cause it to be executed immediately One order can only be modfied for less than 10000 times  Weight: 1

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **OrderApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_id** | **String**|  | [default to nothing]
 **orig_client_order_id** | **String**|  | [default to nothing]
 **symbol** | **String**|  | [default to nothing]
 **side** | **String**|  | [default to nothing]
 **quantity** | **String**|  | [default to nothing]
 **price** | **String**|  | [default to nothing]
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

# **new_order_trade**
> new_order_trade(_api::OrderApi; symbol=nothing, side=nothing, position_side=nothing, type=nothing, time_in_force=nothing, quantity=nothing, reduce_only=nothing, price=nothing, new_client_order_id=nothing, stop_price=nothing, close_position=nothing, activation_price=nothing, callback_rate=nothing, working_type=nothing, price_protect=nothing, new_order_resp_type=nothing, price_match=nothing, self_trade_prevention_mode=nothing, good_till_date=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> new_order_trade(_api::OrderApi, response_stream::Channel; symbol=nothing, side=nothing, position_side=nothing, type=nothing, time_in_force=nothing, quantity=nothing, reduce_only=nothing, price=nothing, new_client_order_id=nothing, stop_price=nothing, close_position=nothing, activation_price=nothing, callback_rate=nothing, working_type=nothing, price_protect=nothing, new_order_resp_type=nothing, price_match=nothing, self_trade_prevention_mode=nothing, good_till_date=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

New Order (TRADE)

https://binance-docs.github.io/apidocs/futures/en/#new-order-trade

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **OrderApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  | [default to nothing]
 **side** | **String**|  | [default to nothing]
 **position_side** | **String**| Default BOTH for One-way Mode ; LONG or SHORT for Hedge Mode. It must be sent with Hedge Mode. | [default to nothing]
 **type** | **String**|  | [default to nothing]
 **time_in_force** | **String**|  | [default to nothing]
 **quantity** | **String**|  | [default to nothing]
 **reduce_only** | **String**|  | [default to nothing]
 **price** | **String**|  | [default to nothing]
 **new_client_order_id** | **String**|  | [default to nothing]
 **stop_price** | **String**|  | [default to nothing]
 **close_position** | **String**| true, false；Close-All，used with STOP_MARKET or TAKE_PROFIT_MARKET. | [default to nothing]
 **activation_price** | **String**|  | [default to nothing]
 **callback_rate** | **String**| Used with TRAILING_STOP_MARKET orders, min 0.1, max 5 where 1 for 1% | [default to nothing]
 **working_type** | **String**| stopPrice triggered by: \&quot;MARK_PRICE\&quot;, \&quot;CONTRACT_PRICE\&quot;. Default \&quot;CONTRACT_PRICE\&quot; | [default to nothing]
 **price_protect** | **String**| \&quot;ACK\&quot;, \&quot;RESULT\&quot;, default \&quot;ACK\&quot; | [default to nothing]
 **new_order_resp_type** | **String**| The value cannot be greater than 60000 | [default to nothing]
 **price_match** | **String**|  | [default to nothing]
 **self_trade_prevention_mode** | **String**|  | [default to nothing]
 **good_till_date** | **String**|  | [default to nothing]
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

# **place_multiple_orders_trade**
> place_multiple_orders_trade(_api::OrderApi; batch_orders=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> place_multiple_orders_trade(_api::OrderApi, response_stream::Channel; batch_orders=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

Place Multiple Orders (TRADE)

Place Multiple Orders (TRADE)

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **OrderApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch_orders** | **String**|  | [default to nothing]
 **recv_window** | **String**| The value cannot be greater than 60000 | [default to nothing]
 **timestamp** | **String**|  | [default to nothing]
 **signature** | **String**| Default BOTH for One-way Mode ; LONG or SHORT for Hedge Mode. It must be sent with Hedge Mode. | [default to nothing]
 **x_mbx_apikey** | **String**|  | [default to nothing]

### Return type

**Dict{String, Any}**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **query_current_open_order_user_data**
> query_current_open_order_user_data(_api::OrderApi; symbol=nothing, order_id=nothing, orig_client_order_id=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> query_current_open_order_user_data(_api::OrderApi, response_stream::Channel; symbol=nothing, order_id=nothing, orig_client_order_id=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

Query Current Open Order (USER_DATA)

Query Current Open Order (USER_DATA)

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **OrderApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  | [default to nothing]
 **order_id** | **String**|  | [default to nothing]
 **orig_client_order_id** | **String**|  | [default to nothing]
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

# **query_order**
> query_order(_api::OrderApi; symbol=nothing, order_id=nothing, orig_client_order_id=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> query_order(_api::OrderApi, response_stream::Channel; symbol=nothing, order_id=nothing, orig_client_order_id=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

Query Order

Query Order

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **OrderApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  | [default to nothing]
 **order_id** | **String**|  | [default to nothing]
 **orig_client_order_id** | **String**|  | [default to nothing]
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

# **user_s_force_orders_user_data**
> user_s_force_orders_user_data(_api::OrderApi; symbol=nothing, auto_close_type=nothing, start_time=nothing, end_time=nothing, limit=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Dict{String, Any}, OpenAPI.Clients.ApiResponse <br/>
> user_s_force_orders_user_data(_api::OrderApi, response_stream::Channel; symbol=nothing, auto_close_type=nothing, start_time=nothing, end_time=nothing, limit=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing) -> Channel{ Dict{String, Any} }, OpenAPI.Clients.ApiResponse

User's Force Orders (USER_DATA)

User's Force Orders (USER_DATA)

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **OrderApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  | [default to nothing]
 **auto_close_type** | **String**|  | [default to nothing]
 **start_time** | **String**|  | [default to nothing]
 **end_time** | **String**|  | [default to nothing]
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

