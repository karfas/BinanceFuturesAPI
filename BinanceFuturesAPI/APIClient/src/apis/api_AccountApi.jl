# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.

struct AccountApi <: OpenAPI.APIClientImpl
    client::OpenAPI.Clients.Client
end

"""
The default API base path for APIs in `AccountApi`.
This can be used to construct the `OpenAPI.Clients.Client` instance.
"""
basepath(::Type{ AccountApi }) = "https://fapi.binance.com"

const _returntypes_account_AccountApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => Dict{String, Any},
)

function _oacinternal_account(_api::AccountApi, timestamp::Int64; recv_window=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    OpenAPI.validate_param("recv_window", "account", :maximum, recv_window, 60000, false)

    _ctx = OpenAPI.Clients.Ctx(_api.client, "GET", _returntypes_account_AccountApi, "/fapi/v2/account", [])
    OpenAPI.Clients.set_param(_ctx.query, "recvWindow", recv_window)  # type Int64
    OpenAPI.Clients.set_param(_ctx.query, "timestamp", timestamp)  # type Int64
    OpenAPI.Clients.set_param(_ctx.query, "signature", signature)  # type String
    OpenAPI.Clients.set_param(_ctx.header, "x-mbx-apikey", x_mbx_apikey)  # type String
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Account information

Account information

Params:
- timestamp::Int64 (required)
- recv_window::Int64
- signature::String
- x_mbx_apikey::String

Return: Dict{String, Any}, OpenAPI.Clients.ApiResponse
"""
function account(_api::AccountApi, timestamp::Int64; recv_window=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = _oacinternal_account(_api, timestamp; recv_window=recv_window, signature=signature, x_mbx_apikey=x_mbx_apikey, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function account(_api::AccountApi, response_stream::Channel, timestamp::Int64; recv_window=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = _oacinternal_account(_api, timestamp; recv_window=recv_window, signature=signature, x_mbx_apikey=x_mbx_apikey, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_commission_rate_AccountApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => Dict{String, Any},
)

function _oacinternal_commission_rate(_api::AccountApi; symbol=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "GET", _returntypes_commission_rate_AccountApi, "/fapi/v1/commissionRate", [])
    OpenAPI.Clients.set_param(_ctx.query, "symbol", symbol)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "recvWindow", recv_window)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "timestamp", timestamp)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "signature", signature)  # type String
    OpenAPI.Clients.set_param(_ctx.header, "x-mbx-apikey", x_mbx_apikey)  # type String
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""User Commission Rate (USER_DATA)

User Commission Rate (USER_DATA)

Params:
- symbol::String
- recv_window::String
- timestamp::String
- signature::String
- x_mbx_apikey::String

Return: Dict{String, Any}, OpenAPI.Clients.ApiResponse
"""
function commission_rate(_api::AccountApi; symbol=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = _oacinternal_commission_rate(_api; symbol=symbol, recv_window=recv_window, timestamp=timestamp, signature=signature, x_mbx_apikey=x_mbx_apikey, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function commission_rate(_api::AccountApi, response_stream::Channel; symbol=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = _oacinternal_commission_rate(_api; symbol=symbol, recv_window=recv_window, timestamp=timestamp, signature=signature, x_mbx_apikey=x_mbx_apikey, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_fapi_v1_api_trading_status_get_AccountApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => ApiTradingStatusResponse,
)

function _oacinternal_fapi_v1_api_trading_status_get(_api::AccountApi, timestamp::Int64; symbol=nothing, recv_window=nothing, _mediaType=nothing)
    OpenAPI.validate_param("recv_window", "fapi_v1_api_trading_status_get", :maximum, recv_window, 60000, false)

    _ctx = OpenAPI.Clients.Ctx(_api.client, "GET", _returntypes_fapi_v1_api_trading_status_get_AccountApi, "/fapi/v1/apiTradingStatus", [])
    OpenAPI.Clients.set_param(_ctx.query, "symbol", symbol)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "recvWindow", recv_window)  # type Int64
    OpenAPI.Clients.set_param(_ctx.query, "timestamp", timestamp)  # type Int64
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Account API Trading Status

Get current account's trading status on futures. Weight: 1 

Params:
- timestamp::Int64 (required)
- symbol::String
- recv_window::Int64

Return: ApiTradingStatusResponse, OpenAPI.Clients.ApiResponse
"""
function fapi_v1_api_trading_status_get(_api::AccountApi, timestamp::Int64; symbol=nothing, recv_window=nothing, _mediaType=nothing)
    _ctx = _oacinternal_fapi_v1_api_trading_status_get(_api, timestamp; symbol=symbol, recv_window=recv_window, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function fapi_v1_api_trading_status_get(_api::AccountApi, response_stream::Channel, timestamp::Int64; symbol=nothing, recv_window=nothing, _mediaType=nothing)
    _ctx = _oacinternal_fapi_v1_api_trading_status_get(_api, timestamp; symbol=symbol, recv_window=recv_window, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_future_account_balance_AccountApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => Dict{String, Any},
)

function _oacinternal_future_account_balance(_api::AccountApi; recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "GET", _returntypes_future_account_balance_AccountApi, "/fapi/v2/balance", [])
    OpenAPI.Clients.set_param(_ctx.query, "recvWindow", recv_window)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "timestamp", timestamp)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "signature", signature)  # type String
    OpenAPI.Clients.set_param(_ctx.header, "x-mbx-apikey", x_mbx_apikey)  # type String
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Future Account Balance

Future Account Balance

Params:
- recv_window::String
- timestamp::String
- signature::String
- x_mbx_apikey::String

Return: Dict{String, Any}, OpenAPI.Clients.ApiResponse
"""
function future_account_balance(_api::AccountApi; recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = _oacinternal_future_account_balance(_api; recv_window=recv_window, timestamp=timestamp, signature=signature, x_mbx_apikey=x_mbx_apikey, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function future_account_balance(_api::AccountApi, response_stream::Channel; recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = _oacinternal_future_account_balance(_api; recv_window=recv_window, timestamp=timestamp, signature=signature, x_mbx_apikey=x_mbx_apikey, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_get_income_history_AccountApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => Dict{String, Any},
)

function _oacinternal_get_income_history(_api::AccountApi; symbol=nothing, income_type=nothing, start_time=nothing, end_time=nothing, page=nothing, limit=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "GET", _returntypes_get_income_history_AccountApi, "/fapi/v1/income", [])
    OpenAPI.Clients.set_param(_ctx.query, "symbol", symbol)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "incomeType", income_type)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "startTime", start_time)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "endTime", end_time)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "page", page)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "limit", limit)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "recvWindow", recv_window)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "timestamp", timestamp)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "signature", signature)  # type String
    OpenAPI.Clients.set_param(_ctx.header, "x-mbx-apikey", x_mbx_apikey)  # type String
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Get Income History

Get Income History

Params:
- symbol::String
- income_type::String
- start_time::String
- end_time::String
- page::String
- limit::String
- recv_window::String
- timestamp::String
- signature::String
- x_mbx_apikey::String

Return: Dict{String, Any}, OpenAPI.Clients.ApiResponse
"""
function get_income_history(_api::AccountApi; symbol=nothing, income_type=nothing, start_time=nothing, end_time=nothing, page=nothing, limit=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = _oacinternal_get_income_history(_api; symbol=symbol, income_type=income_type, start_time=start_time, end_time=end_time, page=page, limit=limit, recv_window=recv_window, timestamp=timestamp, signature=signature, x_mbx_apikey=x_mbx_apikey, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function get_income_history(_api::AccountApi, response_stream::Channel; symbol=nothing, income_type=nothing, start_time=nothing, end_time=nothing, page=nothing, limit=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = _oacinternal_get_income_history(_api; symbol=symbol, income_type=income_type, start_time=start_time, end_time=end_time, page=page, limit=limit, recv_window=recv_window, timestamp=timestamp, signature=signature, x_mbx_apikey=x_mbx_apikey, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_notional_and_leverage_brackets_user_data_AccountApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => Dict{String, Any},
)

function _oacinternal_notional_and_leverage_brackets_user_data(_api::AccountApi; symbol=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "GET", _returntypes_notional_and_leverage_brackets_user_data_AccountApi, "/fapi/v1/leverageBracket", [])
    OpenAPI.Clients.set_param(_ctx.query, "symbol", symbol)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "recvWindow", recv_window)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "timestamp", timestamp)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "signature", signature)  # type String
    OpenAPI.Clients.set_param(_ctx.header, "x-mbx-apikey", x_mbx_apikey)  # type String
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Notional and Leverage Brackets (USER_DATA)

Get present open interest of a specific symbol.

Params:
- symbol::String
- recv_window::String
- timestamp::String
- signature::String
- x_mbx_apikey::String

Return: Dict{String, Any}, OpenAPI.Clients.ApiResponse
"""
function notional_and_leverage_brackets_user_data(_api::AccountApi; symbol=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = _oacinternal_notional_and_leverage_brackets_user_data(_api; symbol=symbol, recv_window=recv_window, timestamp=timestamp, signature=signature, x_mbx_apikey=x_mbx_apikey, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function notional_and_leverage_brackets_user_data(_api::AccountApi, response_stream::Channel; symbol=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = _oacinternal_notional_and_leverage_brackets_user_data(_api; symbol=symbol, recv_window=recv_window, timestamp=timestamp, signature=signature, x_mbx_apikey=x_mbx_apikey, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_position_adl_quantile_estimation_user_data_AccountApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => Dict{String, Any},
)

function _oacinternal_position_adl_quantile_estimation_user_data(_api::AccountApi; symbol=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "GET", _returntypes_position_adl_quantile_estimation_user_data_AccountApi, "/fapi/v1/adlQuantile", [])
    OpenAPI.Clients.set_param(_ctx.query, "symbol", symbol)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "recvWindow", recv_window)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "timestamp", timestamp)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "signature", signature)  # type String
    OpenAPI.Clients.set_param(_ctx.header, "x-mbx-apikey", x_mbx_apikey)  # type String
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Position ADL Quantile Estimation (USER_DATA)

Position ADL Quantile Estimation (USER_DATA)

Params:
- symbol::String
- recv_window::String
- timestamp::String
- signature::String
- x_mbx_apikey::String

Return: Dict{String, Any}, OpenAPI.Clients.ApiResponse
"""
function position_adl_quantile_estimation_user_data(_api::AccountApi; symbol=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = _oacinternal_position_adl_quantile_estimation_user_data(_api; symbol=symbol, recv_window=recv_window, timestamp=timestamp, signature=signature, x_mbx_apikey=x_mbx_apikey, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function position_adl_quantile_estimation_user_data(_api::AccountApi, response_stream::Channel; symbol=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = _oacinternal_position_adl_quantile_estimation_user_data(_api; symbol=symbol, recv_window=recv_window, timestamp=timestamp, signature=signature, x_mbx_apikey=x_mbx_apikey, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_position_information_AccountApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => Dict{String, Any},
)

function _oacinternal_position_information(_api::AccountApi; symbol=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "GET", _returntypes_position_information_AccountApi, "/fapi/v2/positionRisk", [])
    OpenAPI.Clients.set_param(_ctx.query, "symbol", symbol)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "recvWindow", recv_window)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "timestamp", timestamp)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "signature", signature)  # type String
    OpenAPI.Clients.set_param(_ctx.header, "x-mbx-apikey", x_mbx_apikey)  # type String
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Position Information

Position Information

Params:
- symbol::String
- recv_window::String
- timestamp::String
- signature::String
- x_mbx_apikey::String

Return: Dict{String, Any}, OpenAPI.Clients.ApiResponse
"""
function position_information(_api::AccountApi; symbol=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = _oacinternal_position_information(_api; symbol=symbol, recv_window=recv_window, timestamp=timestamp, signature=signature, x_mbx_apikey=x_mbx_apikey, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function position_information(_api::AccountApi, response_stream::Channel; symbol=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = _oacinternal_position_information(_api; symbol=symbol, recv_window=recv_window, timestamp=timestamp, signature=signature, x_mbx_apikey=x_mbx_apikey, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_user_trades_AccountApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => Dict{String, Any},
)

function _oacinternal_user_trades(_api::AccountApi; symbol=nothing, start_time=nothing, end_time=nothing, from_id=nothing, limit=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "GET", _returntypes_user_trades_AccountApi, "/fapi/v1/userTrades", [])
    OpenAPI.Clients.set_param(_ctx.query, "symbol", symbol)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "startTime", start_time)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "endTime", end_time)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "fromId", from_id)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "limit", limit)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "recvWindow", recv_window)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "timestamp", timestamp)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "signature", signature)  # type String
    OpenAPI.Clients.set_param(_ctx.header, "x-mbx-apikey", x_mbx_apikey)  # type String
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Account Trade List

Account Trade List

Params:
- symbol::String
- start_time::String
- end_time::String
- from_id::String
- limit::String
- recv_window::String
- timestamp::String
- signature::String
- x_mbx_apikey::String

Return: Dict{String, Any}, OpenAPI.Clients.ApiResponse
"""
function user_trades(_api::AccountApi; symbol=nothing, start_time=nothing, end_time=nothing, from_id=nothing, limit=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = _oacinternal_user_trades(_api; symbol=symbol, start_time=start_time, end_time=end_time, from_id=from_id, limit=limit, recv_window=recv_window, timestamp=timestamp, signature=signature, x_mbx_apikey=x_mbx_apikey, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function user_trades(_api::AccountApi, response_stream::Channel; symbol=nothing, start_time=nothing, end_time=nothing, from_id=nothing, limit=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = _oacinternal_user_trades(_api; symbol=symbol, start_time=start_time, end_time=end_time, from_id=from_id, limit=limit, recv_window=recv_window, timestamp=timestamp, signature=signature, x_mbx_apikey=x_mbx_apikey, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

export account
export commission_rate
export fapi_v1_api_trading_status_get
export future_account_balance
export get_income_history
export notional_and_leverage_brackets_user_data
export position_adl_quantile_estimation_user_data
export position_information
export user_trades
