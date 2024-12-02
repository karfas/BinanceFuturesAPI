# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""depth_200_response

    Depth200Response(;
        lastUpdateId=nothing,
        E=nothing,
        T=nothing,
        bids=nothing,
        asks=nothing,
    )

    - lastUpdateId::Int64 : Last update ID of the order book
    - E::Int64 : Event time
    - T::Int64 : Transaction time
    - bids::Vector{Vector{String}} : List of bids [price, quantity]
    - asks::Vector{Vector{String}} : List of asks [price, quantity]
"""
Base.@kwdef mutable struct Depth200Response <: OpenAPI.APIModel
    lastUpdateId::Union{Nothing, Int64} = nothing
    E::Union{Nothing, Int64} = nothing
    T::Union{Nothing, Int64} = nothing
    bids::Union{Nothing, Vector{Vector{String}}} = nothing
    asks::Union{Nothing, Vector{Vector{String}}} = nothing

    function Depth200Response(lastUpdateId, E, T, bids, asks, )
        OpenAPI.validate_property(Depth200Response, Symbol("lastUpdateId"), lastUpdateId)
        OpenAPI.validate_property(Depth200Response, Symbol("E"), E)
        OpenAPI.validate_property(Depth200Response, Symbol("T"), T)
        OpenAPI.validate_property(Depth200Response, Symbol("bids"), bids)
        OpenAPI.validate_property(Depth200Response, Symbol("asks"), asks)
        return new(lastUpdateId, E, T, bids, asks, )
    end
end # type Depth200Response

const _property_types_Depth200Response = Dict{Symbol,String}(Symbol("lastUpdateId")=>"Int64", Symbol("E")=>"Int64", Symbol("T")=>"Int64", Symbol("bids")=>"Vector{Vector{String}}", Symbol("asks")=>"Vector{Vector{String}}", )
OpenAPI.property_type(::Type{ Depth200Response }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_Depth200Response[name]))}

function check_required(o::Depth200Response)
    o.lastUpdateId === nothing && (return false)
    o.bids === nothing && (return false)
    o.asks === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ Depth200Response }, name::Symbol, val)
    if name === Symbol("lastUpdateId")
        OpenAPI.validate_param(name, "Depth200Response", :format, val, "int64")
    end
    if name === Symbol("E")
        OpenAPI.validate_param(name, "Depth200Response", :format, val, "int64")
    end
    if name === Symbol("T")
        OpenAPI.validate_param(name, "Depth200Response", :format, val, "int64")
    end
end
