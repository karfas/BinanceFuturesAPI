# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.



@doc raw"""ticker24hr_200_response

    Ticker24hr200Response(; value=nothing)
"""
mutable struct Ticker24hr200Response <: OpenAPI.OneOfAPIModel
    value::Any # Union{ Vector{SymbolPriceTickerResponseInner}, Vector{TickerPriceChangeResponseInner} }
    Ticker24hr200Response() = new()
    Ticker24hr200Response(value) = new(value)
end # type Ticker24hr200Response

function OpenAPI.property_type(::Type{ Ticker24hr200Response }, name::Symbol, json::Dict{String,Any})
    
    # no discriminator specified, can't determine the exact type
    return fieldtype(Ticker24hr200Response, name)
end
