# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.

struct DataStreamApi <: OpenAPI.APIClientImpl
    client::OpenAPI.Clients.Client
end

"""
The default API base path for APIs in `DataStreamApi`.
This can be used to construct the `OpenAPI.Clients.Client` instance.
"""
basepath(::Type{ DataStreamApi }) = "https://fapi.binance.com"

const _returntypes_delete_listen_key_DataStreamApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => ListenKeyResponse,
)

function _oacinternal_delete_listen_key(_api::DataStreamApi; x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "DELETE", _returntypes_delete_listen_key_DataStreamApi, "/fapi/v1/listenKey", [])
    OpenAPI.Clients.set_param(_ctx.header, "x-mbx-apikey", x_mbx_apikey)  # type String
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Delete Listen Key

Delete Listen Key

Params:
- x_mbx_apikey::String

Return: ListenKeyResponse, OpenAPI.Clients.ApiResponse
"""
function delete_listen_key(_api::DataStreamApi; x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = _oacinternal_delete_listen_key(_api; x_mbx_apikey=x_mbx_apikey, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function delete_listen_key(_api::DataStreamApi, response_stream::Channel; x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = _oacinternal_delete_listen_key(_api; x_mbx_apikey=x_mbx_apikey, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_post_listen_key_DataStreamApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => ListenKeyResponse,
)

function _oacinternal_post_listen_key(_api::DataStreamApi; x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "POST", _returntypes_post_listen_key_DataStreamApi, "/fapi/v1/listenKey", [])
    OpenAPI.Clients.set_param(_ctx.header, "x-mbx-apikey", x_mbx_apikey)  # type String
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Create New Listen Key

Create New Listen Key

Params:
- x_mbx_apikey::String

Return: ListenKeyResponse, OpenAPI.Clients.ApiResponse
"""
function post_listen_key(_api::DataStreamApi; x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = _oacinternal_post_listen_key(_api; x_mbx_apikey=x_mbx_apikey, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function post_listen_key(_api::DataStreamApi, response_stream::Channel; x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = _oacinternal_post_listen_key(_api; x_mbx_apikey=x_mbx_apikey, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_put_listen_key_DataStreamApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => ListenKeyResponse,
)

function _oacinternal_put_listen_key(_api::DataStreamApi; x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "PUT", _returntypes_put_listen_key_DataStreamApi, "/fapi/v1/listenKey", [])
    OpenAPI.Clients.set_param(_ctx.header, "x-mbx-apikey", x_mbx_apikey)  # type String
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Renew Listen Key

Renew Listen Key

Params:
- x_mbx_apikey::String

Return: ListenKeyResponse, OpenAPI.Clients.ApiResponse
"""
function put_listen_key(_api::DataStreamApi; x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = _oacinternal_put_listen_key(_api; x_mbx_apikey=x_mbx_apikey, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function put_listen_key(_api::DataStreamApi, response_stream::Channel; x_mbx_apikey=nothing, _mediaType=nothing)
    _ctx = _oacinternal_put_listen_key(_api; x_mbx_apikey=x_mbx_apikey, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

export delete_listen_key
export post_listen_key
export put_listen_key
