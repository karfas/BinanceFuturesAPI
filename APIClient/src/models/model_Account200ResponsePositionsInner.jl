# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""account_200_response_positions_inner

    Account200ResponsePositionsInner(;
        symbol=nothing,
        initialMargin=nothing,
        maintMargin=nothing,
        unrealizedProfit=nothing,
        positionInitialMargin=nothing,
        openOrderInitialMargin=nothing,
        leverage=nothing,
        isolated=nothing,
        entryPrice=nothing,
        maxNotional=nothing,
        positionSide=nothing,
        positionAmt=nothing,
        notional=nothing,
        isolatedWallet=nothing,
        updateTime=nothing,
    )

    - symbol::String : Trading pair
    - initialMargin::String : Initial margin
    - maintMargin::String : Maintenance margin
    - unrealizedProfit::String : Unrealized profit
    - positionInitialMargin::String : Position initial margin
    - openOrderInitialMargin::String : Open order initial margin
    - leverage::String : Leverage
    - isolated::Bool : Is isolated
    - entryPrice::String : Entry price
    - maxNotional::String : Maximum notional
    - positionSide::String : Position side
    - positionAmt::String : Position amount
    - notional::String : Notional value
    - isolatedWallet::String : Isolated wallet
    - updateTime::Int64 : Update time
"""
Base.@kwdef mutable struct Account200ResponsePositionsInner <: OpenAPI.APIModel
    symbol::Union{Nothing, String} = nothing
    initialMargin::Union{Nothing, String} = nothing
    maintMargin::Union{Nothing, String} = nothing
    unrealizedProfit::Union{Nothing, String} = nothing
    positionInitialMargin::Union{Nothing, String} = nothing
    openOrderInitialMargin::Union{Nothing, String} = nothing
    leverage::Union{Nothing, String} = nothing
    isolated::Union{Nothing, Bool} = nothing
    entryPrice::Union{Nothing, String} = nothing
    maxNotional::Union{Nothing, String} = nothing
    positionSide::Union{Nothing, String} = nothing
    positionAmt::Union{Nothing, String} = nothing
    notional::Union{Nothing, String} = nothing
    isolatedWallet::Union{Nothing, String} = nothing
    updateTime::Union{Nothing, Int64} = nothing

    function Account200ResponsePositionsInner(symbol, initialMargin, maintMargin, unrealizedProfit, positionInitialMargin, openOrderInitialMargin, leverage, isolated, entryPrice, maxNotional, positionSide, positionAmt, notional, isolatedWallet, updateTime, )
        OpenAPI.validate_property(Account200ResponsePositionsInner, Symbol("symbol"), symbol)
        OpenAPI.validate_property(Account200ResponsePositionsInner, Symbol("initialMargin"), initialMargin)
        OpenAPI.validate_property(Account200ResponsePositionsInner, Symbol("maintMargin"), maintMargin)
        OpenAPI.validate_property(Account200ResponsePositionsInner, Symbol("unrealizedProfit"), unrealizedProfit)
        OpenAPI.validate_property(Account200ResponsePositionsInner, Symbol("positionInitialMargin"), positionInitialMargin)
        OpenAPI.validate_property(Account200ResponsePositionsInner, Symbol("openOrderInitialMargin"), openOrderInitialMargin)
        OpenAPI.validate_property(Account200ResponsePositionsInner, Symbol("leverage"), leverage)
        OpenAPI.validate_property(Account200ResponsePositionsInner, Symbol("isolated"), isolated)
        OpenAPI.validate_property(Account200ResponsePositionsInner, Symbol("entryPrice"), entryPrice)
        OpenAPI.validate_property(Account200ResponsePositionsInner, Symbol("maxNotional"), maxNotional)
        OpenAPI.validate_property(Account200ResponsePositionsInner, Symbol("positionSide"), positionSide)
        OpenAPI.validate_property(Account200ResponsePositionsInner, Symbol("positionAmt"), positionAmt)
        OpenAPI.validate_property(Account200ResponsePositionsInner, Symbol("notional"), notional)
        OpenAPI.validate_property(Account200ResponsePositionsInner, Symbol("isolatedWallet"), isolatedWallet)
        OpenAPI.validate_property(Account200ResponsePositionsInner, Symbol("updateTime"), updateTime)
        return new(symbol, initialMargin, maintMargin, unrealizedProfit, positionInitialMargin, openOrderInitialMargin, leverage, isolated, entryPrice, maxNotional, positionSide, positionAmt, notional, isolatedWallet, updateTime, )
    end
end # type Account200ResponsePositionsInner

const _property_types_Account200ResponsePositionsInner = Dict{Symbol,String}(Symbol("symbol")=>"String", Symbol("initialMargin")=>"String", Symbol("maintMargin")=>"String", Symbol("unrealizedProfit")=>"String", Symbol("positionInitialMargin")=>"String", Symbol("openOrderInitialMargin")=>"String", Symbol("leverage")=>"String", Symbol("isolated")=>"Bool", Symbol("entryPrice")=>"String", Symbol("maxNotional")=>"String", Symbol("positionSide")=>"String", Symbol("positionAmt")=>"String", Symbol("notional")=>"String", Symbol("isolatedWallet")=>"String", Symbol("updateTime")=>"Int64", )
OpenAPI.property_type(::Type{ Account200ResponsePositionsInner }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_Account200ResponsePositionsInner[name]))}

function check_required(o::Account200ResponsePositionsInner)
    true
end

function OpenAPI.validate_property(::Type{ Account200ResponsePositionsInner }, name::Symbol, val)
end
