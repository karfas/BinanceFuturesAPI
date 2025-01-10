# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""ExchangeInfoResponse

    ExchangeInfoResponse(;
        exchangeFilters=nothing,
        rateLimits=nothing,
        serverTime=nothing,
        assets=nothing,
        symbols=nothing,
        timezone=nothing,
    )

    - exchangeFilters::Vector{Any}
    - rateLimits::Vector{ExchangeInfoResponseRateLimitsInner}
    - serverTime::Int64
    - assets::Vector{ExchangeInfoResponseAssetsInner}
    - symbols::Vector{ExchangeInfoResponseSymbolsInner}
    - timezone::String
"""
Base.@kwdef mutable struct ExchangeInfoResponse <: OpenAPI.APIModel
    exchangeFilters::Union{Nothing, Vector{Any}} = nothing
    rateLimits::Union{Nothing, Vector} = nothing # spec type: Union{ Nothing, Vector{ExchangeInfoResponseRateLimitsInner} }
    serverTime::Union{Nothing, Int64} = nothing
    assets::Union{Nothing, Vector} = nothing # spec type: Union{ Nothing, Vector{ExchangeInfoResponseAssetsInner} }
    symbols::Union{Nothing, Vector} = nothing # spec type: Union{ Nothing, Vector{ExchangeInfoResponseSymbolsInner} }
    timezone::Union{Nothing, String} = nothing

    function ExchangeInfoResponse(exchangeFilters, rateLimits, serverTime, assets, symbols, timezone, )
        OpenAPI.validate_property(ExchangeInfoResponse, Symbol("exchangeFilters"), exchangeFilters)
        OpenAPI.validate_property(ExchangeInfoResponse, Symbol("rateLimits"), rateLimits)
        OpenAPI.validate_property(ExchangeInfoResponse, Symbol("serverTime"), serverTime)
        OpenAPI.validate_property(ExchangeInfoResponse, Symbol("assets"), assets)
        OpenAPI.validate_property(ExchangeInfoResponse, Symbol("symbols"), symbols)
        OpenAPI.validate_property(ExchangeInfoResponse, Symbol("timezone"), timezone)
        return new(exchangeFilters, rateLimits, serverTime, assets, symbols, timezone, )
    end
end # type ExchangeInfoResponse

const _property_types_ExchangeInfoResponse = Dict{Symbol,String}(Symbol("exchangeFilters")=>"Vector{Any}", Symbol("rateLimits")=>"Vector{ExchangeInfoResponseRateLimitsInner}", Symbol("serverTime")=>"Int64", Symbol("assets")=>"Vector{ExchangeInfoResponseAssetsInner}", Symbol("symbols")=>"Vector{ExchangeInfoResponseSymbolsInner}", Symbol("timezone")=>"String", )
OpenAPI.property_type(::Type{ ExchangeInfoResponse }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_ExchangeInfoResponse[name]))}

function check_required(o::ExchangeInfoResponse)
    true
end

function OpenAPI.validate_property(::Type{ ExchangeInfoResponse }, name::Symbol, val)
    if name === Symbol("serverTime")
        OpenAPI.validate_param(name, "ExchangeInfoResponse", :format, val, "int64")
    end
end
