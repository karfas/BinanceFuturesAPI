# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""BookTickerResponse_inner

    BookTickerResponseInner(;
        symbol=nothing,
        bidPrice=nothing,
        bidQty=nothing,
        askPrice=nothing,
        askQty=nothing,
        time=nothing,
    )

    - symbol::String : Trading pair symbol
    - bidPrice::String : Best bid price
    - bidQty::String : Best bid quantity
    - askPrice::String : Best ask price
    - askQty::String : Best ask quantity
    - time::Int64 : Update time
"""
Base.@kwdef mutable struct BookTickerResponseInner <: OpenAPI.APIModel
    symbol::Union{Nothing, String} = nothing
    bidPrice::Union{Nothing, String} = nothing
    bidQty::Union{Nothing, String} = nothing
    askPrice::Union{Nothing, String} = nothing
    askQty::Union{Nothing, String} = nothing
    time::Union{Nothing, Int64} = nothing

    function BookTickerResponseInner(symbol, bidPrice, bidQty, askPrice, askQty, time, )
        OpenAPI.validate_property(BookTickerResponseInner, Symbol("symbol"), symbol)
        OpenAPI.validate_property(BookTickerResponseInner, Symbol("bidPrice"), bidPrice)
        OpenAPI.validate_property(BookTickerResponseInner, Symbol("bidQty"), bidQty)
        OpenAPI.validate_property(BookTickerResponseInner, Symbol("askPrice"), askPrice)
        OpenAPI.validate_property(BookTickerResponseInner, Symbol("askQty"), askQty)
        OpenAPI.validate_property(BookTickerResponseInner, Symbol("time"), time)
        return new(symbol, bidPrice, bidQty, askPrice, askQty, time, )
    end
end # type BookTickerResponseInner

const _property_types_BookTickerResponseInner = Dict{Symbol,String}(Symbol("symbol")=>"String", Symbol("bidPrice")=>"String", Symbol("bidQty")=>"String", Symbol("askPrice")=>"String", Symbol("askQty")=>"String", Symbol("time")=>"Int64", )
OpenAPI.property_type(::Type{ BookTickerResponseInner }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_BookTickerResponseInner[name]))}

function check_required(o::BookTickerResponseInner)
    true
end

function OpenAPI.validate_property(::Type{ BookTickerResponseInner }, name::Symbol, val)
    if name === Symbol("time")
        OpenAPI.validate_param(name, "BookTickerResponseInner", :format, val, "int64")
    end
end
