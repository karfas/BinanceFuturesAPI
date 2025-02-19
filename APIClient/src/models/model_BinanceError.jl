# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""BinanceError

    BinanceError(;
        code=nothing,
        msg=nothing,
    )

    - code::Int64 : Error code
    - msg::String : Error message
"""
Base.@kwdef mutable struct BinanceError <: OpenAPI.APIModel
    code::Union{Nothing, Int64} = nothing
    msg::Union{Nothing, String} = nothing

    function BinanceError(code, msg, )
        OpenAPI.validate_property(BinanceError, Symbol("code"), code)
        OpenAPI.validate_property(BinanceError, Symbol("msg"), msg)
        return new(code, msg, )
    end
end # type BinanceError

const _property_types_BinanceError = Dict{Symbol,String}(Symbol("code")=>"Int64", Symbol("msg")=>"String", )
OpenAPI.property_type(::Type{ BinanceError }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_BinanceError[name]))}

function check_required(o::BinanceError)
    true
end

function OpenAPI.validate_property(::Type{ BinanceError }, name::Symbol, val)
end
