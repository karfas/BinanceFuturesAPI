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
    Regex("^" * replace("200", "x"=>".") * "\$") => Account200Response,
)

function _oacinternal_account(_api::AccountApi; recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    OpenAPI.validate_param("recv_window", "account", :maximum, recv_window, 60000, false)

    _ctx = OpenAPI.Clients.Ctx(_api.client, "GET", _returntypes_account_AccountApi, "/fapi/v3/account", [])
    OpenAPI.Clients.set_param(_ctx.query, "recvWindow", recv_window; style="form", is_explode=true)  # type Int64
    OpenAPI.Clients.set_param(_ctx.query, "timestamp", timestamp; style="form", is_explode=true)  # type Int64
    OpenAPI.Clients.set_param(_ctx.query, "signature", signature; style="form", is_explode=true)  # type String
    OpenAPI.Clients.set_param(_ctx.header, "x-mbx-apikey", x_mbx_apikey)  # type String
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Account information

Account information

Params:
- recv_window::Int64
- timestamp::Int64
- signature::String
- x_mbx_apikey::String

Return: Account200Response, OpenAPI.Clients.ApiResponse
"""
function account(_api::AccountApi; recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = _oacinternal_account(_api; recv_window=recv_window, timestamp=timestamp, signature=signature, x_mbx_apikey=x_mbx_apikey, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function account(_api::AccountApi, response_stream::Channel; recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = _oacinternal_account(_api; recv_window=recv_window, timestamp=timestamp, signature=signature, x_mbx_apikey=x_mbx_apikey, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_adl_quantile_AccountApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => Dict{String, Any},
)

function _oacinternal_adl_quantile(_api::AccountApi; symbol=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "GET", _returntypes_adl_quantile_AccountApi, "/fapi/v1/adlQuantile", [])
    OpenAPI.Clients.set_param(_ctx.query, "symbol", symbol; style="form", is_explode=true)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "recvWindow", recv_window; style="form", is_explode=true)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "timestamp", timestamp; style="form", is_explode=true)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "signature", signature; style="form", is_explode=true)  # type String
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
function adl_quantile(_api::AccountApi; symbol=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = _oacinternal_adl_quantile(_api; symbol=symbol, recv_window=recv_window, timestamp=timestamp, signature=signature, x_mbx_apikey=x_mbx_apikey, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function adl_quantile(_api::AccountApi, response_stream::Channel; symbol=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = _oacinternal_adl_quantile(_api; symbol=symbol, recv_window=recv_window, timestamp=timestamp, signature=signature, x_mbx_apikey=x_mbx_apikey, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_api_trading_status_AccountApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => ApiTradingStatusResponse,
)

function _oacinternal_api_trading_status(_api::AccountApi; symbol=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    OpenAPI.validate_param("recv_window", "api_trading_status", :maximum, recv_window, 60000, false)

    _ctx = OpenAPI.Clients.Ctx(_api.client, "GET", _returntypes_api_trading_status_AccountApi, "/fapi/v1/apiTradingStatus", [])
    OpenAPI.Clients.set_param(_ctx.query, "symbol", symbol; style="form", is_explode=true)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "recvWindow", recv_window; style="form", is_explode=true)  # type Int64
    OpenAPI.Clients.set_param(_ctx.query, "timestamp", timestamp; style="form", is_explode=true)  # type Int64
    OpenAPI.Clients.set_param(_ctx.query, "signature", signature; style="form", is_explode=true)  # type String
    OpenAPI.Clients.set_param(_ctx.header, "x-mbx-apikey", x_mbx_apikey)  # type String
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Account API Trading Status

Get current account's trading status on futures. Weight: 1 

Params:
- symbol::String
- recv_window::Int64
- timestamp::Int64
- signature::String
- x_mbx_apikey::String

Return: ApiTradingStatusResponse, OpenAPI.Clients.ApiResponse
"""
function api_trading_status(_api::AccountApi; symbol=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = _oacinternal_api_trading_status(_api; symbol=symbol, recv_window=recv_window, timestamp=timestamp, signature=signature, x_mbx_apikey=x_mbx_apikey, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function api_trading_status(_api::AccountApi, response_stream::Channel; symbol=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = _oacinternal_api_trading_status(_api; symbol=symbol, recv_window=recv_window, timestamp=timestamp, signature=signature, x_mbx_apikey=x_mbx_apikey, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_balance_AccountApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => Vector{Balance200ResponseInner},
)

function _oacinternal_balance(_api::AccountApi; recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    OpenAPI.validate_param("recv_window", "balance", :maximum, recv_window, 60000, false)

    _ctx = OpenAPI.Clients.Ctx(_api.client, "GET", _returntypes_balance_AccountApi, "/fapi/v3/balance", [])
    OpenAPI.Clients.set_param(_ctx.query, "recvWindow", recv_window; style="form", is_explode=true)  # type Int64
    OpenAPI.Clients.set_param(_ctx.query, "timestamp", timestamp; style="form", is_explode=true)  # type Int64
    OpenAPI.Clients.set_param(_ctx.query, "signature", signature; style="form", is_explode=true)  # type String
    OpenAPI.Clients.set_param(_ctx.header, "x-mbx-apikey", x_mbx_apikey)  # type String
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Future Account Balance

Get Future Account Balance

Params:
- recv_window::Int64
- timestamp::Int64
- signature::String
- x_mbx_apikey::String

Return: Vector{Balance200ResponseInner}, OpenAPI.Clients.ApiResponse
"""
function balance(_api::AccountApi; recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = _oacinternal_balance(_api; recv_window=recv_window, timestamp=timestamp, signature=signature, x_mbx_apikey=x_mbx_apikey, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function balance(_api::AccountApi, response_stream::Channel; recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = _oacinternal_balance(_api; recv_window=recv_window, timestamp=timestamp, signature=signature, x_mbx_apikey=x_mbx_apikey, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_commission_rate_AccountApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => Dict{String, Any},
)

function _oacinternal_commission_rate(_api::AccountApi; symbol=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "GET", _returntypes_commission_rate_AccountApi, "/fapi/v1/commissionRate", [])
    OpenAPI.Clients.set_param(_ctx.query, "symbol", symbol; style="form", is_explode=true)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "recvWindow", recv_window; style="form", is_explode=true)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "timestamp", timestamp; style="form", is_explode=true)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "signature", signature; style="form", is_explode=true)  # type String
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

const _returntypes_income_AccountApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => Vector{Income200ResponseInner},
)

function _oacinternal_income(_api::AccountApi; symbol=nothing, income_type=nothing, start_time=nothing, end_time=nothing, limit=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    OpenAPI.validate_param("limit", "income", :maximum, limit, 1000, false)

    OpenAPI.validate_param("recv_window", "income", :maximum, recv_window, 60000, false)

    _ctx = OpenAPI.Clients.Ctx(_api.client, "GET", _returntypes_income_AccountApi, "/fapi/v1/income", [])
    OpenAPI.Clients.set_param(_ctx.query, "symbol", symbol; style="form", is_explode=true)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "incomeType", income_type; style="form", is_explode=true)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "startTime", start_time; style="form", is_explode=true)  # type Int64
    OpenAPI.Clients.set_param(_ctx.query, "endTime", end_time; style="form", is_explode=true)  # type Int64
    OpenAPI.Clients.set_param(_ctx.query, "limit", limit; style="form", is_explode=true)  # type Int64
    OpenAPI.Clients.set_param(_ctx.query, "recvWindow", recv_window; style="form", is_explode=true)  # type Int64
    OpenAPI.Clients.set_param(_ctx.query, "timestamp", timestamp; style="form", is_explode=true)  # type Int64
    OpenAPI.Clients.set_param(_ctx.query, "signature", signature; style="form", is_explode=true)  # type String
    OpenAPI.Clients.set_param(_ctx.header, "x-mbx-apikey", x_mbx_apikey)  # type String
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Get Income History

Get income history from futures account

Params:
- symbol::String
- income_type::String
- start_time::Int64
- end_time::Int64
- limit::Int64
- recv_window::Int64
- timestamp::Int64
- signature::String
- x_mbx_apikey::String

Return: Vector{Income200ResponseInner}, OpenAPI.Clients.ApiResponse
"""
function income(_api::AccountApi; symbol=nothing, income_type=nothing, start_time=nothing, end_time=nothing, limit=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = _oacinternal_income(_api; symbol=symbol, income_type=income_type, start_time=start_time, end_time=end_time, limit=limit, recv_window=recv_window, timestamp=timestamp, signature=signature, x_mbx_apikey=x_mbx_apikey, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function income(_api::AccountApi, response_stream::Channel; symbol=nothing, income_type=nothing, start_time=nothing, end_time=nothing, limit=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = _oacinternal_income(_api; symbol=symbol, income_type=income_type, start_time=start_time, end_time=end_time, limit=limit, recv_window=recv_window, timestamp=timestamp, signature=signature, x_mbx_apikey=x_mbx_apikey, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_leverage_bracket_AccountApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => Vector{LeverageBracket200ResponseInner},
)

function _oacinternal_leverage_bracket(_api::AccountApi; symbol=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    OpenAPI.validate_param("recv_window", "leverage_bracket", :maximum, recv_window, 60000, false)

    _ctx = OpenAPI.Clients.Ctx(_api.client, "GET", _returntypes_leverage_bracket_AccountApi, "/fapi/v1/leverageBracket", [])
    OpenAPI.Clients.set_param(_ctx.query, "symbol", symbol; style="form", is_explode=true)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "recvWindow", recv_window; style="form", is_explode=true)  # type Int64
    OpenAPI.Clients.set_param(_ctx.query, "timestamp", timestamp; style="form", is_explode=true)  # type Int64
    OpenAPI.Clients.set_param(_ctx.query, "signature", signature; style="form", is_explode=true)  # type String
    OpenAPI.Clients.set_param(_ctx.header, "x-mbx-apikey", x_mbx_apikey)  # type String
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Notional and Leverage Brackets

Get notional and leverage brackets

Params:
- symbol::String
- recv_window::Int64
- timestamp::Int64
- signature::String
- x_mbx_apikey::String

Return: Vector{LeverageBracket200ResponseInner}, OpenAPI.Clients.ApiResponse
"""
function leverage_bracket(_api::AccountApi; symbol=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = _oacinternal_leverage_bracket(_api; symbol=symbol, recv_window=recv_window, timestamp=timestamp, signature=signature, x_mbx_apikey=x_mbx_apikey, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function leverage_bracket(_api::AccountApi, response_stream::Channel; symbol=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = _oacinternal_leverage_bracket(_api; symbol=symbol, recv_window=recv_window, timestamp=timestamp, signature=signature, x_mbx_apikey=x_mbx_apikey, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_position_risk_AccountApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => Vector{PositionRisk200ResponseInner},
)

function _oacinternal_position_risk(_api::AccountApi; recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    OpenAPI.validate_param("recv_window", "position_risk", :maximum, recv_window, 60000, false)

    _ctx = OpenAPI.Clients.Ctx(_api.client, "GET", _returntypes_position_risk_AccountApi, "/fapi/v3/positionRisk", [])
    OpenAPI.Clients.set_param(_ctx.query, "recvWindow", recv_window; style="form", is_explode=true)  # type Int64
    OpenAPI.Clients.set_param(_ctx.query, "timestamp", timestamp; style="form", is_explode=true)  # type Int64
    OpenAPI.Clients.set_param(_ctx.query, "signature", signature; style="form", is_explode=true)  # type String
    OpenAPI.Clients.set_param(_ctx.header, "x-mbx-apikey", x_mbx_apikey)  # type String
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Position Risk

Get Position Risk of all symbols

Params:
- recv_window::Int64
- timestamp::Int64
- signature::String
- x_mbx_apikey::String

Return: Vector{PositionRisk200ResponseInner}, OpenAPI.Clients.ApiResponse
"""
function position_risk(_api::AccountApi; recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = _oacinternal_position_risk(_api; recv_window=recv_window, timestamp=timestamp, signature=signature, x_mbx_apikey=x_mbx_apikey, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function position_risk(_api::AccountApi, response_stream::Channel; recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = _oacinternal_position_risk(_api; recv_window=recv_window, timestamp=timestamp, signature=signature, x_mbx_apikey=x_mbx_apikey, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_user_trades_AccountApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => Vector{UserTrades200ResponseInner},
)

function _oacinternal_user_trades(_api::AccountApi; symbol=nothing, start_time=nothing, end_time=nothing, from_id=nothing, limit=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "GET", _returntypes_user_trades_AccountApi, "/fapi/v1/userTrades", [])
    OpenAPI.Clients.set_param(_ctx.query, "symbol", symbol; style="form", is_explode=true)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "startTime", start_time; style="form", is_explode=true)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "endTime", end_time; style="form", is_explode=true)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "fromId", from_id; style="form", is_explode=true)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "limit", limit; style="form", is_explode=true)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "recvWindow", recv_window; style="form", is_explode=true)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "timestamp", timestamp; style="form", is_explode=true)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "signature", signature; style="form", is_explode=true)  # type String
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

Return: Vector{UserTrades200ResponseInner}, OpenAPI.Clients.ApiResponse
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
export adl_quantile
export api_trading_status
export balance
export commission_rate
export income
export leverage_bracket
export position_risk
export user_trades
