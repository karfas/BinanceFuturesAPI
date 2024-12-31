# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""ExchangeInfoResponse_rateLimits_inner

    ExchangeInfoResponseRateLimitsInner(;
        interval=nothing,
        intervalNum=nothing,
        limit=nothing,
        rateLimitType=nothing,
    )

    - interval::String
    - intervalNum::Int64
    - limit::Int64
    - rateLimitType::String
"""
Base.@kwdef mutable struct ExchangeInfoResponseRateLimitsInner <: OpenAPI.APIModel
    interval::Union{Nothing, String} = nothing
    intervalNum::Union{Nothing, Int64} = nothing
    limit::Union{Nothing, Int64} = nothing
    rateLimitType::Union{Nothing, String} = nothing

    function ExchangeInfoResponseRateLimitsInner(interval, intervalNum, limit, rateLimitType, )
        OpenAPI.validate_property(ExchangeInfoResponseRateLimitsInner, Symbol("interval"), interval)
        OpenAPI.validate_property(ExchangeInfoResponseRateLimitsInner, Symbol("intervalNum"), intervalNum)
        OpenAPI.validate_property(ExchangeInfoResponseRateLimitsInner, Symbol("limit"), limit)
        OpenAPI.validate_property(ExchangeInfoResponseRateLimitsInner, Symbol("rateLimitType"), rateLimitType)
        return new(interval, intervalNum, limit, rateLimitType, )
    end
end # type ExchangeInfoResponseRateLimitsInner

const _property_types_ExchangeInfoResponseRateLimitsInner = Dict{Symbol,String}(Symbol("interval")=>"String", Symbol("intervalNum")=>"Int64", Symbol("limit")=>"Int64", Symbol("rateLimitType")=>"String", )
OpenAPI.property_type(::Type{ ExchangeInfoResponseRateLimitsInner }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_ExchangeInfoResponseRateLimitsInner[name]))}

function check_required(o::ExchangeInfoResponseRateLimitsInner)
    true
end

function OpenAPI.validate_property(::Type{ ExchangeInfoResponseRateLimitsInner }, name::Symbol, val)

    if name === Symbol("interval")
        OpenAPI.validate_param(name, "ExchangeInfoResponseRateLimitsInner", :enum, val, ["MINUTE"])
    end




    if name === Symbol("rateLimitType")
        OpenAPI.validate_param(name, "ExchangeInfoResponseRateLimitsInner", :enum, val, ["REQUEST_WEIGHT", "ORDERS"])
    end

end
