# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""ExchangeInfoResponse_symbols_inner

    ExchangeInfoResponseSymbolsInner(;
        symbol=nothing,
        pair=nothing,
        contractType=nothing,
        deliveryDate=nothing,
        onboardDate=nothing,
        status=nothing,
        maintMarginPercent=nothing,
        requiredMarginPercent=nothing,
        baseAsset=nothing,
        quoteAsset=nothing,
        marginAsset=nothing,
        pricePrecision=nothing,
        quantityPrecision=nothing,
        baseAssetPrecision=nothing,
        quotePrecision=nothing,
        underlyingType=nothing,
        underlyingSubType=nothing,
        settlePlan=nothing,
        triggerProtect=nothing,
        filters=nothing,
        OrderType=nothing,
        timeInForce=nothing,
        liquidationFee=nothing,
        marketTakeBound=nothing,
    )

    - symbol::String
    - pair::String
    - contractType::String
    - deliveryDate::Int64
    - onboardDate::Int64
    - status::String
    - maintMarginPercent::String
    - requiredMarginPercent::String
    - baseAsset::String
    - quoteAsset::String
    - marginAsset::String
    - pricePrecision::Int64
    - quantityPrecision::Int64
    - baseAssetPrecision::Int64
    - quotePrecision::Int64
    - underlyingType::String
    - underlyingSubType::Vector{String}
    - settlePlan::Int64
    - triggerProtect::String
    - filters::Vector{ExchangeInfoResponseSymbolsInnerFiltersInner}
    - OrderType::Vector{String}
    - timeInForce::Vector{String}
    - liquidationFee::String
    - marketTakeBound::String
"""
Base.@kwdef mutable struct ExchangeInfoResponseSymbolsInner <: OpenAPI.APIModel
    symbol::Union{Nothing, String} = nothing
    pair::Union{Nothing, String} = nothing
    contractType::Union{Nothing, String} = nothing
    deliveryDate::Union{Nothing, Int64} = nothing
    onboardDate::Union{Nothing, Int64} = nothing
    status::Union{Nothing, String} = nothing
    maintMarginPercent::Union{Nothing, String} = nothing
    requiredMarginPercent::Union{Nothing, String} = nothing
    baseAsset::Union{Nothing, String} = nothing
    quoteAsset::Union{Nothing, String} = nothing
    marginAsset::Union{Nothing, String} = nothing
    pricePrecision::Union{Nothing, Int64} = nothing
    quantityPrecision::Union{Nothing, Int64} = nothing
    baseAssetPrecision::Union{Nothing, Int64} = nothing
    quotePrecision::Union{Nothing, Int64} = nothing
    underlyingType::Union{Nothing, String} = nothing
    underlyingSubType::Union{Nothing, Vector{String}} = nothing
    settlePlan::Union{Nothing, Int64} = nothing
    triggerProtect::Union{Nothing, String} = nothing
    filters::Union{Nothing, Vector} = nothing # spec type: Union{ Nothing, Vector{ExchangeInfoResponseSymbolsInnerFiltersInner} }
    OrderType::Union{Nothing, Vector{String}} = nothing
    timeInForce::Union{Nothing, Vector{String}} = nothing
    liquidationFee::Union{Nothing, String} = nothing
    marketTakeBound::Union{Nothing, String} = nothing

    function ExchangeInfoResponseSymbolsInner(symbol, pair, contractType, deliveryDate, onboardDate, status, maintMarginPercent, requiredMarginPercent, baseAsset, quoteAsset, marginAsset, pricePrecision, quantityPrecision, baseAssetPrecision, quotePrecision, underlyingType, underlyingSubType, settlePlan, triggerProtect, filters, OrderType, timeInForce, liquidationFee, marketTakeBound, )
        OpenAPI.validate_property(ExchangeInfoResponseSymbolsInner, Symbol("symbol"), symbol)
        OpenAPI.validate_property(ExchangeInfoResponseSymbolsInner, Symbol("pair"), pair)
        OpenAPI.validate_property(ExchangeInfoResponseSymbolsInner, Symbol("contractType"), contractType)
        OpenAPI.validate_property(ExchangeInfoResponseSymbolsInner, Symbol("deliveryDate"), deliveryDate)
        OpenAPI.validate_property(ExchangeInfoResponseSymbolsInner, Symbol("onboardDate"), onboardDate)
        OpenAPI.validate_property(ExchangeInfoResponseSymbolsInner, Symbol("status"), status)
        OpenAPI.validate_property(ExchangeInfoResponseSymbolsInner, Symbol("maintMarginPercent"), maintMarginPercent)
        OpenAPI.validate_property(ExchangeInfoResponseSymbolsInner, Symbol("requiredMarginPercent"), requiredMarginPercent)
        OpenAPI.validate_property(ExchangeInfoResponseSymbolsInner, Symbol("baseAsset"), baseAsset)
        OpenAPI.validate_property(ExchangeInfoResponseSymbolsInner, Symbol("quoteAsset"), quoteAsset)
        OpenAPI.validate_property(ExchangeInfoResponseSymbolsInner, Symbol("marginAsset"), marginAsset)
        OpenAPI.validate_property(ExchangeInfoResponseSymbolsInner, Symbol("pricePrecision"), pricePrecision)
        OpenAPI.validate_property(ExchangeInfoResponseSymbolsInner, Symbol("quantityPrecision"), quantityPrecision)
        OpenAPI.validate_property(ExchangeInfoResponseSymbolsInner, Symbol("baseAssetPrecision"), baseAssetPrecision)
        OpenAPI.validate_property(ExchangeInfoResponseSymbolsInner, Symbol("quotePrecision"), quotePrecision)
        OpenAPI.validate_property(ExchangeInfoResponseSymbolsInner, Symbol("underlyingType"), underlyingType)
        OpenAPI.validate_property(ExchangeInfoResponseSymbolsInner, Symbol("underlyingSubType"), underlyingSubType)
        OpenAPI.validate_property(ExchangeInfoResponseSymbolsInner, Symbol("settlePlan"), settlePlan)
        OpenAPI.validate_property(ExchangeInfoResponseSymbolsInner, Symbol("triggerProtect"), triggerProtect)
        OpenAPI.validate_property(ExchangeInfoResponseSymbolsInner, Symbol("filters"), filters)
        OpenAPI.validate_property(ExchangeInfoResponseSymbolsInner, Symbol("OrderType"), OrderType)
        OpenAPI.validate_property(ExchangeInfoResponseSymbolsInner, Symbol("timeInForce"), timeInForce)
        OpenAPI.validate_property(ExchangeInfoResponseSymbolsInner, Symbol("liquidationFee"), liquidationFee)
        OpenAPI.validate_property(ExchangeInfoResponseSymbolsInner, Symbol("marketTakeBound"), marketTakeBound)
        return new(symbol, pair, contractType, deliveryDate, onboardDate, status, maintMarginPercent, requiredMarginPercent, baseAsset, quoteAsset, marginAsset, pricePrecision, quantityPrecision, baseAssetPrecision, quotePrecision, underlyingType, underlyingSubType, settlePlan, triggerProtect, filters, OrderType, timeInForce, liquidationFee, marketTakeBound, )
    end
end # type ExchangeInfoResponseSymbolsInner

const _property_types_ExchangeInfoResponseSymbolsInner = Dict{Symbol,String}(Symbol("symbol")=>"String", Symbol("pair")=>"String", Symbol("contractType")=>"String", Symbol("deliveryDate")=>"Int64", Symbol("onboardDate")=>"Int64", Symbol("status")=>"String", Symbol("maintMarginPercent")=>"String", Symbol("requiredMarginPercent")=>"String", Symbol("baseAsset")=>"String", Symbol("quoteAsset")=>"String", Symbol("marginAsset")=>"String", Symbol("pricePrecision")=>"Int64", Symbol("quantityPrecision")=>"Int64", Symbol("baseAssetPrecision")=>"Int64", Symbol("quotePrecision")=>"Int64", Symbol("underlyingType")=>"String", Symbol("underlyingSubType")=>"Vector{String}", Symbol("settlePlan")=>"Int64", Symbol("triggerProtect")=>"String", Symbol("filters")=>"Vector{ExchangeInfoResponseSymbolsInnerFiltersInner}", Symbol("OrderType")=>"Vector{String}", Symbol("timeInForce")=>"Vector{String}", Symbol("liquidationFee")=>"String", Symbol("marketTakeBound")=>"String", )
OpenAPI.property_type(::Type{ ExchangeInfoResponseSymbolsInner }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_ExchangeInfoResponseSymbolsInner[name]))}

function check_required(o::ExchangeInfoResponseSymbolsInner)
    true
end

function OpenAPI.validate_property(::Type{ ExchangeInfoResponseSymbolsInner }, name::Symbol, val)
    if name === Symbol("deliveryDate")
        OpenAPI.validate_param(name, "ExchangeInfoResponseSymbolsInner", :format, val, "int64")
    end
    if name === Symbol("onboardDate")
        OpenAPI.validate_param(name, "ExchangeInfoResponseSymbolsInner", :format, val, "int64")
    end
    if name === Symbol("OrderType")
        OpenAPI.validate_param(name, "ExchangeInfoResponseSymbolsInner", :enum, val, [])
    end
    if name === Symbol("timeInForce")
        OpenAPI.validate_param(name, "ExchangeInfoResponseSymbolsInner", :enum, val, [])
    end
end
