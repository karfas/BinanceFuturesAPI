# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""ApiTradingStatusResponse

    ApiTradingStatusResponse(;
        isLocked=nothing,
        plannedRecoverTime=nothing,
        triggerCondition=nothing,
        updateTime=nothing,
        indicators=nothing,
    )

    - isLocked::Bool : API trading function is locked or not
    - plannedRecoverTime::Int64 : If API trading function is locked, this is the planned recover time
    - triggerCondition::ApiTradingStatusResponseTriggerCondition
    - updateTime::Int64 : Last update time
    - indicators::ApiTradingStatusResponseIndicators
"""
Base.@kwdef mutable struct ApiTradingStatusResponse <: OpenAPI.APIModel
    isLocked::Union{Nothing, Bool} = nothing
    plannedRecoverTime::Union{Nothing, Int64} = nothing
    triggerCondition = nothing # spec type: Union{ Nothing, ApiTradingStatusResponseTriggerCondition }
    updateTime::Union{Nothing, Int64} = nothing
    indicators = nothing # spec type: Union{ Nothing, ApiTradingStatusResponseIndicators }

    function ApiTradingStatusResponse(isLocked, plannedRecoverTime, triggerCondition, updateTime, indicators, )
        OpenAPI.validate_property(ApiTradingStatusResponse, Symbol("isLocked"), isLocked)
        OpenAPI.validate_property(ApiTradingStatusResponse, Symbol("plannedRecoverTime"), plannedRecoverTime)
        OpenAPI.validate_property(ApiTradingStatusResponse, Symbol("triggerCondition"), triggerCondition)
        OpenAPI.validate_property(ApiTradingStatusResponse, Symbol("updateTime"), updateTime)
        OpenAPI.validate_property(ApiTradingStatusResponse, Symbol("indicators"), indicators)
        return new(isLocked, plannedRecoverTime, triggerCondition, updateTime, indicators, )
    end
end # type ApiTradingStatusResponse

const _property_types_ApiTradingStatusResponse = Dict{Symbol,String}(Symbol("isLocked")=>"Bool", Symbol("plannedRecoverTime")=>"Int64", Symbol("triggerCondition")=>"ApiTradingStatusResponseTriggerCondition", Symbol("updateTime")=>"Int64", Symbol("indicators")=>"ApiTradingStatusResponseIndicators", )
OpenAPI.property_type(::Type{ ApiTradingStatusResponse }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_ApiTradingStatusResponse[name]))}

function check_required(o::ApiTradingStatusResponse)
    true
end

function OpenAPI.validate_property(::Type{ ApiTradingStatusResponse }, name::Symbol, val)
    if name === Symbol("plannedRecoverTime")
        OpenAPI.validate_param(name, "ApiTradingStatusResponse", :format, val, "int64")
    end
    if name === Symbol("updateTime")
        OpenAPI.validate_param(name, "ApiTradingStatusResponse", :format, val, "int64")
    end
end