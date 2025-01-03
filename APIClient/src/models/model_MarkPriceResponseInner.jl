# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""MarkPriceResponse_inner

    MarkPriceResponseInner(;
        symbol=nothing,
        markPrice=nothing,
        indexPrice=nothing,
        lastFundingRate=nothing,
        nextFundingTime=nothing,
        time=nothing,
    )

    - symbol::String : Trading pair symbol
    - markPrice::String : Mark price
    - indexPrice::String : Index price
    - lastFundingRate::String : Last funding rate
    - nextFundingTime::Int64 : Next funding time
    - time::Int64 : Update time
"""
Base.@kwdef mutable struct MarkPriceResponseInner <: OpenAPI.APIModel
    symbol::Union{Nothing, String} = nothing
    markPrice::Union{Nothing, String} = nothing
    indexPrice::Union{Nothing, String} = nothing
    lastFundingRate::Union{Nothing, String} = nothing
    nextFundingTime::Union{Nothing, Int64} = nothing
    time::Union{Nothing, Int64} = nothing

    function MarkPriceResponseInner(symbol, markPrice, indexPrice, lastFundingRate, nextFundingTime, time, )
        OpenAPI.validate_property(MarkPriceResponseInner, Symbol("symbol"), symbol)
        OpenAPI.validate_property(MarkPriceResponseInner, Symbol("markPrice"), markPrice)
        OpenAPI.validate_property(MarkPriceResponseInner, Symbol("indexPrice"), indexPrice)
        OpenAPI.validate_property(MarkPriceResponseInner, Symbol("lastFundingRate"), lastFundingRate)
        OpenAPI.validate_property(MarkPriceResponseInner, Symbol("nextFundingTime"), nextFundingTime)
        OpenAPI.validate_property(MarkPriceResponseInner, Symbol("time"), time)
        return new(symbol, markPrice, indexPrice, lastFundingRate, nextFundingTime, time, )
    end
end # type MarkPriceResponseInner

const _property_types_MarkPriceResponseInner = Dict{Symbol,String}(Symbol("symbol")=>"String", Symbol("markPrice")=>"String", Symbol("indexPrice")=>"String", Symbol("lastFundingRate")=>"String", Symbol("nextFundingTime")=>"Int64", Symbol("time")=>"Int64", )
OpenAPI.property_type(::Type{ MarkPriceResponseInner }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_MarkPriceResponseInner[name]))}

function check_required(o::MarkPriceResponseInner)
    true
end

function OpenAPI.validate_property(::Type{ MarkPriceResponseInner }, name::Symbol, val)





    if name === Symbol("nextFundingTime")
        OpenAPI.validate_param(name, "MarkPriceResponseInner", :format, val, "int64")
    end

    if name === Symbol("time")
        OpenAPI.validate_param(name, "MarkPriceResponseInner", :format, val, "int64")
    end
end
