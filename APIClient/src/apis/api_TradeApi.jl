# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.

struct TradeApi <: OpenAPI.APIClientImpl
    client::OpenAPI.Clients.Client
end

"""
The default API base path for APIs in `TradeApi`.
This can be used to construct the `OpenAPI.Clients.Client` instance.
"""
basepath(::Type{ TradeApi }) = "https://fapi.binance.com"

const _returntypes_get_position_margin_history_TradeApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => Vector{PositionMarginHistoryResponseInner},
)

function _oacinternal_get_position_margin_history(_api::TradeApi, symbol::String, type::Int64; start_time=nothing, end_time=nothing, limit=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "GET", _returntypes_get_position_margin_history_TradeApi, "/fapi/v1/positionMargin/history", [])
    OpenAPI.Clients.set_param(_ctx.query, "symbol", symbol)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "type", type)  # type Int64
    OpenAPI.Clients.set_param(_ctx.query, "startTime", start_time)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "endTime", end_time)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "limit", limit)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "recvWindow", recv_window)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "timestamp", timestamp)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "signature", signature)  # type String
    OpenAPI.Clients.set_param(_ctx.header, "x-mbx-apikey", x_mbx_apikey)  # type String
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Get Postion Margin Change History

Get Postion Margin Change History

Params:
- symbol::String (required)
- type::Int64 (required)
- start_time::String
- end_time::String
- limit::String
- recv_window::String
- timestamp::String
- signature::String
- x_mbx_apikey::String

Return: Vector{PositionMarginHistoryResponseInner}, OpenAPI.Clients.ApiResponse
"""
function get_position_margin_history(_api::TradeApi, symbol::String, type::Int64; start_time=nothing, end_time=nothing, limit=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = _oacinternal_get_position_margin_history(_api, symbol, type; start_time=start_time, end_time=end_time, limit=limit, recv_window=recv_window, timestamp=timestamp, signature=signature, x_mbx_apikey=x_mbx_apikey, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function get_position_margin_history(_api::TradeApi, response_stream::Channel, symbol::String, type::Int64; start_time=nothing, end_time=nothing, limit=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = _oacinternal_get_position_margin_history(_api, symbol, type; start_time=start_time, end_time=end_time, limit=limit, recv_window=recv_window, timestamp=timestamp, signature=signature, x_mbx_apikey=x_mbx_apikey, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_multi_assets_margin_TradeApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => MultiAssetsMarginResponse,
)

function _oacinternal_multi_assets_margin(_api::TradeApi; recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "GET", _returntypes_multi_assets_margin_TradeApi, "/fapi/v1/multiAssetsMargin", [])
    OpenAPI.Clients.set_param(_ctx.query, "recvWindow", recv_window)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "timestamp", timestamp)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "signature", signature)  # type String
    OpenAPI.Clients.set_param(_ctx.header, "x-mbx-apikey", x_mbx_apikey)  # type String
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Get Current Multi-Assets Mode

Get Current Multi-Assets Mode

Params:
- recv_window::String
- timestamp::String
- signature::String
- x_mbx_apikey::String

Return: MultiAssetsMarginResponse, OpenAPI.Clients.ApiResponse
"""
function multi_assets_margin(_api::TradeApi; recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = _oacinternal_multi_assets_margin(_api; recv_window=recv_window, timestamp=timestamp, signature=signature, x_mbx_apikey=x_mbx_apikey, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function multi_assets_margin(_api::TradeApi, response_stream::Channel; recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = _oacinternal_multi_assets_margin(_api; recv_window=recv_window, timestamp=timestamp, signature=signature, x_mbx_apikey=x_mbx_apikey, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_post_leverage_TradeApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => Dict{String, Any},
)

function _oacinternal_post_leverage(_api::TradeApi, symbol::String, leverage::Int64; recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    OpenAPI.validate_param("leverage", "post_leverage", :maximum, leverage, 125, false)
    OpenAPI.validate_param("leverage", "post_leverage", :minimum, leverage, 1, false)

    _ctx = OpenAPI.Clients.Ctx(_api.client, "POST", _returntypes_post_leverage_TradeApi, "/fapi/v1/leverage", [])
    OpenAPI.Clients.set_param(_ctx.query, "symbol", symbol)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "leverage", leverage)  # type Int64
    OpenAPI.Clients.set_param(_ctx.query, "recvWindow", recv_window)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "timestamp", timestamp)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "signature", signature)  # type String
    OpenAPI.Clients.set_param(_ctx.header, "x-mbx-apikey", x_mbx_apikey)  # type String
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Change Initial Leverage

Change Initial Leverage

Params:
- symbol::String (required)
- leverage::Int64 (required)
- recv_window::String
- timestamp::String
- signature::String
- x_mbx_apikey::String

Return: Dict{String, Any}, OpenAPI.Clients.ApiResponse
"""
function post_leverage(_api::TradeApi, symbol::String, leverage::Int64; recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = _oacinternal_post_leverage(_api, symbol, leverage; recv_window=recv_window, timestamp=timestamp, signature=signature, x_mbx_apikey=x_mbx_apikey, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function post_leverage(_api::TradeApi, response_stream::Channel, symbol::String, leverage::Int64; recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = _oacinternal_post_leverage(_api, symbol, leverage; recv_window=recv_window, timestamp=timestamp, signature=signature, x_mbx_apikey=x_mbx_apikey, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_post_margin_type_TradeApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => Dict{String, Any},
)

function _oacinternal_post_margin_type(_api::TradeApi, symbol::String, margin_type::String; recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "POST", _returntypes_post_margin_type_TradeApi, "/fapi/v1/marginType", [])
    OpenAPI.Clients.set_param(_ctx.query, "symbol", symbol)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "marginType", margin_type)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "recvWindow", recv_window)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "timestamp", timestamp)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "signature", signature)  # type String
    OpenAPI.Clients.set_param(_ctx.header, "x-mbx-apikey", x_mbx_apikey)  # type String
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Change Margin Type

Change Margin Type

Params:
- symbol::String (required)
- margin_type::String (required)
- recv_window::String
- timestamp::String
- signature::String
- x_mbx_apikey::String

Return: Dict{String, Any}, OpenAPI.Clients.ApiResponse
"""
function post_margin_type(_api::TradeApi, symbol::String, margin_type::String; recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = _oacinternal_post_margin_type(_api, symbol, margin_type; recv_window=recv_window, timestamp=timestamp, signature=signature, x_mbx_apikey=x_mbx_apikey, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function post_margin_type(_api::TradeApi, response_stream::Channel, symbol::String, margin_type::String; recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = _oacinternal_post_margin_type(_api, symbol, margin_type; recv_window=recv_window, timestamp=timestamp, signature=signature, x_mbx_apikey=x_mbx_apikey, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_post_multi_assets_margin_TradeApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => Dict{String, Any},
)

function _oacinternal_post_multi_assets_margin(_api::TradeApi; multi_assets_margin=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "POST", _returntypes_post_multi_assets_margin_TradeApi, "/fapi/v1/multiAssetsMargin", [])
    OpenAPI.Clients.set_param(_ctx.query, "multiAssetsMargin", multi_assets_margin)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "recvWindow", recv_window)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "timestamp", timestamp)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "signature", signature)  # type String
    OpenAPI.Clients.set_param(_ctx.header, "x-mbx-apikey", x_mbx_apikey)  # type String
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Change Multi-Assets Mode

Change Multi-Assets Mode

Params:
- multi_assets_margin::String
- recv_window::String
- timestamp::String
- signature::String
- x_mbx_apikey::String

Return: Dict{String, Any}, OpenAPI.Clients.ApiResponse
"""
function post_multi_assets_margin(_api::TradeApi; multi_assets_margin=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = _oacinternal_post_multi_assets_margin(_api; multi_assets_margin=multi_assets_margin, recv_window=recv_window, timestamp=timestamp, signature=signature, x_mbx_apikey=x_mbx_apikey, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function post_multi_assets_margin(_api::TradeApi, response_stream::Channel; multi_assets_margin=nothing, recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = _oacinternal_post_multi_assets_margin(_api; multi_assets_margin=multi_assets_margin, recv_window=recv_window, timestamp=timestamp, signature=signature, x_mbx_apikey=x_mbx_apikey, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_post_position_margin_TradeApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => PositionMarginResponse,
)

function _oacinternal_post_position_margin(_api::TradeApi, symbol::String, position_side::String, amount::String, type::Int64; recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "POST", _returntypes_post_position_margin_TradeApi, "/fapi/v1/positionMargin", [])
    OpenAPI.Clients.set_param(_ctx.query, "symbol", symbol)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "positionSide", position_side)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "amount", amount)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "type", type)  # type Int64
    OpenAPI.Clients.set_param(_ctx.query, "recvWindow", recv_window)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "timestamp", timestamp)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "signature", signature)  # type String
    OpenAPI.Clients.set_param(_ctx.header, "x-mbx-apikey", x_mbx_apikey)  # type String
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Modify Isolated Position Margin

Modify Isolated Position Margin

Params:
- symbol::String (required)
- position_side::String (required)
- amount::String (required)
- type::Int64 (required)
- recv_window::String
- timestamp::String
- signature::String
- x_mbx_apikey::String

Return: PositionMarginResponse, OpenAPI.Clients.ApiResponse
"""
function post_position_margin(_api::TradeApi, symbol::String, position_side::String, amount::String, type::Int64; recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = _oacinternal_post_position_margin(_api, symbol, position_side, amount, type; recv_window=recv_window, timestamp=timestamp, signature=signature, x_mbx_apikey=x_mbx_apikey, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function post_position_margin(_api::TradeApi, response_stream::Channel, symbol::String, position_side::String, amount::String, type::Int64; recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = _oacinternal_post_position_margin(_api, symbol, position_side, amount, type; recv_window=recv_window, timestamp=timestamp, signature=signature, x_mbx_apikey=x_mbx_apikey, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_post_position_side_dual_TradeApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => PositionModeResponse,
)

function _oacinternal_post_position_side_dual(_api::TradeApi, dual_side_position::Bool; recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "POST", _returntypes_post_position_side_dual_TradeApi, "/fapi/v1/positionSide/dual", [])
    OpenAPI.Clients.set_param(_ctx.query, "dualSidePosition", dual_side_position)  # type Bool
    OpenAPI.Clients.set_param(_ctx.query, "recvWindow", recv_window)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "timestamp", timestamp)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "signature", signature)  # type String
    OpenAPI.Clients.set_param(_ctx.header, "x-mbx-apikey", x_mbx_apikey)  # type String
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Change Position Mode（TRADE）

Change Position Mode（TRADE）

Params:
- dual_side_position::Bool (required)
- recv_window::String
- timestamp::String
- signature::String
- x_mbx_apikey::String

Return: PositionModeResponse, OpenAPI.Clients.ApiResponse
"""
function post_position_side_dual(_api::TradeApi, dual_side_position::Bool; recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = _oacinternal_post_position_side_dual(_api, dual_side_position; recv_window=recv_window, timestamp=timestamp, signature=signature, x_mbx_apikey=x_mbx_apikey, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function post_position_side_dual(_api::TradeApi, response_stream::Channel, dual_side_position::Bool; recv_window=nothing, timestamp=nothing, signature=nothing, x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = _oacinternal_post_position_side_dual(_api, dual_side_position; recv_window=recv_window, timestamp=timestamp, signature=signature, x_mbx_apikey=x_mbx_apikey, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

export get_position_margin_history
export multi_assets_margin
export post_leverage
export post_margin_type
export post_multi_assets_margin
export post_position_margin
export post_position_side_dual
