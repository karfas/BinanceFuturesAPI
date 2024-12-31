# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""PremiumIndexResponse_inner

    PremiumIndexResponseInner(;
        symbol=nothing,
        markPrice=nothing,
        indexPrice=nothing,
        estimatedSettlePrice=nothing,
        lastFundingRate=nothing,
        nextFundingTime=nothing,
        interestRate=nothing,
        time=nothing,
    )

    - symbol::String : Trading pair symbol
    - markPrice::String : Mark price
    - indexPrice::String : Index price
    - estimatedSettlePrice::String : Estimated settle price
    - lastFundingRate::String : Last funding rate
    - nextFundingTime::Int64 : Next funding time
    - interestRate::String : Interest rate
    - time::Int64 : Update time
"""
Base.@kwdef mutable struct PremiumIndexResponseInner <: OpenAPI.APIModel
    symbol::Union{Nothing, String} = nothing
    markPrice::Union{Nothing, String} = nothing
    indexPrice::Union{Nothing, String} = nothing
    estimatedSettlePrice::Union{Nothing, String} = nothing
    lastFundingRate::Union{Nothing, String} = nothing
    nextFundingTime::Union{Nothing, Int64} = nothing
    interestRate::Union{Nothing, String} = nothing
    time::Union{Nothing, Int64} = nothing

    function PremiumIndexResponseInner(symbol, markPrice, indexPrice, estimatedSettlePrice, lastFundingRate, nextFundingTime, interestRate, time, )
        OpenAPI.validate_property(PremiumIndexResponseInner, Symbol("symbol"), symbol)
        OpenAPI.validate_property(PremiumIndexResponseInner, Symbol("markPrice"), markPrice)
        OpenAPI.validate_property(PremiumIndexResponseInner, Symbol("indexPrice"), indexPrice)
        OpenAPI.validate_property(PremiumIndexResponseInner, Symbol("estimatedSettlePrice"), estimatedSettlePrice)
        OpenAPI.validate_property(PremiumIndexResponseInner, Symbol("lastFundingRate"), lastFundingRate)
        OpenAPI.validate_property(PremiumIndexResponseInner, Symbol("nextFundingTime"), nextFundingTime)
        OpenAPI.validate_property(PremiumIndexResponseInner, Symbol("interestRate"), interestRate)
        OpenAPI.validate_property(PremiumIndexResponseInner, Symbol("time"), time)
        return new(symbol, markPrice, indexPrice, estimatedSettlePrice, lastFundingRate, nextFundingTime, interestRate, time, )
    end
end # type PremiumIndexResponseInner

const _property_types_PremiumIndexResponseInner = Dict{Symbol,String}(Symbol("symbol")=>"String", Symbol("markPrice")=>"String", Symbol("indexPrice")=>"String", Symbol("estimatedSettlePrice")=>"String", Symbol("lastFundingRate")=>"String", Symbol("nextFundingTime")=>"Int64", Symbol("interestRate")=>"String", Symbol("time")=>"Int64", )
OpenAPI.property_type(::Type{ PremiumIndexResponseInner }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_PremiumIndexResponseInner[name]))}

function check_required(o::PremiumIndexResponseInner)
    true
end

function OpenAPI.validate_property(::Type{ PremiumIndexResponseInner }, name::Symbol, val)






    if name === Symbol("nextFundingTime")
        OpenAPI.validate_param(name, "PremiumIndexResponseInner", :format, val, "int64")
    end


    if name === Symbol("time")
        OpenAPI.validate_param(name, "PremiumIndexResponseInner", :format, val, "int64")
    end
end
