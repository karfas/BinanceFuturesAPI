# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""leverage_bracket_200_response_inner_brackets_inner

    LeverageBracket200ResponseInnerBracketsInner(;
        bracket=nothing,
        initialLeverage=nothing,
        notionalCap=nothing,
        notionalFloor=nothing,
        maintMarginRatio=nothing,
        cum=nothing,
    )

    - bracket::Int64 : Bracket number
    - initialLeverage::Int64 : Max initial leverage for this bracket
    - notionalCap::String : Cap notional of this bracket
    - notionalFloor::String : Floor notional of this bracket
    - maintMarginRatio::String : Maintenance margin ratio for this bracket
    - cum::String : Auxiliary number for quick calculation
"""
Base.@kwdef mutable struct LeverageBracket200ResponseInnerBracketsInner <: OpenAPI.APIModel
    bracket::Union{Nothing, Int64} = nothing
    initialLeverage::Union{Nothing, Int64} = nothing
    notionalCap::Union{Nothing, String} = nothing
    notionalFloor::Union{Nothing, String} = nothing
    maintMarginRatio::Union{Nothing, String} = nothing
    cum::Union{Nothing, String} = nothing

    function LeverageBracket200ResponseInnerBracketsInner(bracket, initialLeverage, notionalCap, notionalFloor, maintMarginRatio, cum, )
        OpenAPI.validate_property(LeverageBracket200ResponseInnerBracketsInner, Symbol("bracket"), bracket)
        OpenAPI.validate_property(LeverageBracket200ResponseInnerBracketsInner, Symbol("initialLeverage"), initialLeverage)
        OpenAPI.validate_property(LeverageBracket200ResponseInnerBracketsInner, Symbol("notionalCap"), notionalCap)
        OpenAPI.validate_property(LeverageBracket200ResponseInnerBracketsInner, Symbol("notionalFloor"), notionalFloor)
        OpenAPI.validate_property(LeverageBracket200ResponseInnerBracketsInner, Symbol("maintMarginRatio"), maintMarginRatio)
        OpenAPI.validate_property(LeverageBracket200ResponseInnerBracketsInner, Symbol("cum"), cum)
        return new(bracket, initialLeverage, notionalCap, notionalFloor, maintMarginRatio, cum, )
    end
end # type LeverageBracket200ResponseInnerBracketsInner

const _property_types_LeverageBracket200ResponseInnerBracketsInner = Dict{Symbol,String}(Symbol("bracket")=>"Int64", Symbol("initialLeverage")=>"Int64", Symbol("notionalCap")=>"String", Symbol("notionalFloor")=>"String", Symbol("maintMarginRatio")=>"String", Symbol("cum")=>"String", )
OpenAPI.property_type(::Type{ LeverageBracket200ResponseInnerBracketsInner }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_LeverageBracket200ResponseInnerBracketsInner[name]))}

function check_required(o::LeverageBracket200ResponseInnerBracketsInner)
    true
end

function OpenAPI.validate_property(::Type{ LeverageBracket200ResponseInnerBracketsInner }, name::Symbol, val)
end
