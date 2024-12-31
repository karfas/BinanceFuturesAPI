# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""account_200_response

    Account200Response(;
        feeTier=nothing,
        canTrade=nothing,
        canDeposit=nothing,
        canWithdraw=nothing,
        updateTime=nothing,
        totalInitialMargin=nothing,
        totalMaintMargin=nothing,
        totalWalletBalance=nothing,
        totalUnrealizedProfit=nothing,
        totalMarginBalance=nothing,
        totalPositionInitialMargin=nothing,
        totalOpenOrderInitialMargin=nothing,
        totalCrossWalletBalance=nothing,
        totalCrossUnPnl=nothing,
        availableBalance=nothing,
        maxWithdrawAmount=nothing,
        assets=nothing,
        positions=nothing,
    )

    - feeTier::Int64 : Fee tier
    - canTrade::Bool : Can trade
    - canDeposit::Bool : Can deposit
    - canWithdraw::Bool : Can withdraw
    - updateTime::Int64 : Update time
    - totalInitialMargin::String : Total initial margin
    - totalMaintMargin::String : Total maintenance margin
    - totalWalletBalance::String : Total wallet balance
    - totalUnrealizedProfit::String : Total unrealized profit
    - totalMarginBalance::String : Total margin balance
    - totalPositionInitialMargin::String : Total position initial margin
    - totalOpenOrderInitialMargin::String : Total open order initial margin
    - totalCrossWalletBalance::String : Total cross wallet balance
    - totalCrossUnPnl::String : Total cross unrealized PnL
    - availableBalance::String : Available balance
    - maxWithdrawAmount::String : Maximum withdraw amount
    - assets::Vector{Account200ResponseAssetsInner} : Assets information
    - positions::Vector{Account200ResponsePositionsInner} : Positions
"""
Base.@kwdef mutable struct Account200Response <: OpenAPI.APIModel
    feeTier::Union{Nothing, Int64} = nothing
    canTrade::Union{Nothing, Bool} = nothing
    canDeposit::Union{Nothing, Bool} = nothing
    canWithdraw::Union{Nothing, Bool} = nothing
    updateTime::Union{Nothing, Int64} = nothing
    totalInitialMargin::Union{Nothing, String} = nothing
    totalMaintMargin::Union{Nothing, String} = nothing
    totalWalletBalance::Union{Nothing, String} = nothing
    totalUnrealizedProfit::Union{Nothing, String} = nothing
    totalMarginBalance::Union{Nothing, String} = nothing
    totalPositionInitialMargin::Union{Nothing, String} = nothing
    totalOpenOrderInitialMargin::Union{Nothing, String} = nothing
    totalCrossWalletBalance::Union{Nothing, String} = nothing
    totalCrossUnPnl::Union{Nothing, String} = nothing
    availableBalance::Union{Nothing, String} = nothing
    maxWithdrawAmount::Union{Nothing, String} = nothing
    assets::Union{Nothing, Vector} = nothing # spec type: Union{ Nothing, Vector{Account200ResponseAssetsInner} }
    positions::Union{Nothing, Vector} = nothing # spec type: Union{ Nothing, Vector{Account200ResponsePositionsInner} }

    function Account200Response(feeTier, canTrade, canDeposit, canWithdraw, updateTime, totalInitialMargin, totalMaintMargin, totalWalletBalance, totalUnrealizedProfit, totalMarginBalance, totalPositionInitialMargin, totalOpenOrderInitialMargin, totalCrossWalletBalance, totalCrossUnPnl, availableBalance, maxWithdrawAmount, assets, positions, )
        OpenAPI.validate_property(Account200Response, Symbol("feeTier"), feeTier)
        OpenAPI.validate_property(Account200Response, Symbol("canTrade"), canTrade)
        OpenAPI.validate_property(Account200Response, Symbol("canDeposit"), canDeposit)
        OpenAPI.validate_property(Account200Response, Symbol("canWithdraw"), canWithdraw)
        OpenAPI.validate_property(Account200Response, Symbol("updateTime"), updateTime)
        OpenAPI.validate_property(Account200Response, Symbol("totalInitialMargin"), totalInitialMargin)
        OpenAPI.validate_property(Account200Response, Symbol("totalMaintMargin"), totalMaintMargin)
        OpenAPI.validate_property(Account200Response, Symbol("totalWalletBalance"), totalWalletBalance)
        OpenAPI.validate_property(Account200Response, Symbol("totalUnrealizedProfit"), totalUnrealizedProfit)
        OpenAPI.validate_property(Account200Response, Symbol("totalMarginBalance"), totalMarginBalance)
        OpenAPI.validate_property(Account200Response, Symbol("totalPositionInitialMargin"), totalPositionInitialMargin)
        OpenAPI.validate_property(Account200Response, Symbol("totalOpenOrderInitialMargin"), totalOpenOrderInitialMargin)
        OpenAPI.validate_property(Account200Response, Symbol("totalCrossWalletBalance"), totalCrossWalletBalance)
        OpenAPI.validate_property(Account200Response, Symbol("totalCrossUnPnl"), totalCrossUnPnl)
        OpenAPI.validate_property(Account200Response, Symbol("availableBalance"), availableBalance)
        OpenAPI.validate_property(Account200Response, Symbol("maxWithdrawAmount"), maxWithdrawAmount)
        OpenAPI.validate_property(Account200Response, Symbol("assets"), assets)
        OpenAPI.validate_property(Account200Response, Symbol("positions"), positions)
        return new(feeTier, canTrade, canDeposit, canWithdraw, updateTime, totalInitialMargin, totalMaintMargin, totalWalletBalance, totalUnrealizedProfit, totalMarginBalance, totalPositionInitialMargin, totalOpenOrderInitialMargin, totalCrossWalletBalance, totalCrossUnPnl, availableBalance, maxWithdrawAmount, assets, positions, )
    end
end # type Account200Response

const _property_types_Account200Response = Dict{Symbol,String}(Symbol("feeTier")=>"Int64", Symbol("canTrade")=>"Bool", Symbol("canDeposit")=>"Bool", Symbol("canWithdraw")=>"Bool", Symbol("updateTime")=>"Int64", Symbol("totalInitialMargin")=>"String", Symbol("totalMaintMargin")=>"String", Symbol("totalWalletBalance")=>"String", Symbol("totalUnrealizedProfit")=>"String", Symbol("totalMarginBalance")=>"String", Symbol("totalPositionInitialMargin")=>"String", Symbol("totalOpenOrderInitialMargin")=>"String", Symbol("totalCrossWalletBalance")=>"String", Symbol("totalCrossUnPnl")=>"String", Symbol("availableBalance")=>"String", Symbol("maxWithdrawAmount")=>"String", Symbol("assets")=>"Vector{Account200ResponseAssetsInner}", Symbol("positions")=>"Vector{Account200ResponsePositionsInner}", )
OpenAPI.property_type(::Type{ Account200Response }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_Account200Response[name]))}

function check_required(o::Account200Response)
    true
end

function OpenAPI.validate_property(::Type{ Account200Response }, name::Symbol, val)


















end
