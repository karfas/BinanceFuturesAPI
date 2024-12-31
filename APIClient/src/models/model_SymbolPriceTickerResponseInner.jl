# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""SymbolPriceTickerResponse_inner

    SymbolPriceTickerResponseInner(;
        symbol=nothing,
        price=nothing,
        time=nothing,
    )

    - symbol::String : Trading pair symbol
    - price::String : Latest price
    - time::Int64 : Update time
"""
Base.@kwdef mutable struct SymbolPriceTickerResponseInner <: OpenAPI.APIModel
    symbol::Union{Nothing, String} = nothing
    price::Union{Nothing, String} = nothing
    time::Union{Nothing, Int64} = nothing

    function SymbolPriceTickerResponseInner(symbol, price, time, )
        OpenAPI.validate_property(SymbolPriceTickerResponseInner, Symbol("symbol"), symbol)
        OpenAPI.validate_property(SymbolPriceTickerResponseInner, Symbol("price"), price)
        OpenAPI.validate_property(SymbolPriceTickerResponseInner, Symbol("time"), time)
        return new(symbol, price, time, )
    end
end # type SymbolPriceTickerResponseInner

const _property_types_SymbolPriceTickerResponseInner = Dict{Symbol,String}(Symbol("symbol")=>"String", Symbol("price")=>"String", Symbol("time")=>"Int64", )
OpenAPI.property_type(::Type{ SymbolPriceTickerResponseInner }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_SymbolPriceTickerResponseInner[name]))}

function check_required(o::SymbolPriceTickerResponseInner)
    true
end

function OpenAPI.validate_property(::Type{ SymbolPriceTickerResponseInner }, name::Symbol, val)



    if name === Symbol("time")
        OpenAPI.validate_param(name, "SymbolPriceTickerResponseInner", :format, val, "int64")
    end
end
