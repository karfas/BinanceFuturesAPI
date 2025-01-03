# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""balance_200_response_inner

    Balance200ResponseInner(;
        accountAlias=nothing,
        asset=nothing,
        balance=nothing,
        crossWalletBalance=nothing,
        crossUnPnl=nothing,
        availableBalance=nothing,
        maxWithdrawAmount=nothing,
        marginAvailable=nothing,
        updateTime=nothing,
    )

    - accountAlias::String : Unique account code
    - asset::String : Asset name
    - balance::String : Wallet balance
    - crossWalletBalance::String : Cross wallet balance
    - crossUnPnl::String : Unrealized profit/loss of crossed positions
    - availableBalance::String : Available balance &#x3D; walletBalance - marginBalance
    - maxWithdrawAmount::String : Maximum amount for transfer out
    - marginAvailable::Bool : Whether the asset can be used as margin in Multi-Assets mode
    - updateTime::Int64 : Update time in milliseconds
"""
Base.@kwdef mutable struct Balance200ResponseInner <: OpenAPI.APIModel
    accountAlias::Union{Nothing, String} = nothing
    asset::Union{Nothing, String} = nothing
    balance::Union{Nothing, String} = nothing
    crossWalletBalance::Union{Nothing, String} = nothing
    crossUnPnl::Union{Nothing, String} = nothing
    availableBalance::Union{Nothing, String} = nothing
    maxWithdrawAmount::Union{Nothing, String} = nothing
    marginAvailable::Union{Nothing, Bool} = nothing
    updateTime::Union{Nothing, Int64} = nothing

    function Balance200ResponseInner(accountAlias, asset, balance, crossWalletBalance, crossUnPnl, availableBalance, maxWithdrawAmount, marginAvailable, updateTime, )
        OpenAPI.validate_property(Balance200ResponseInner, Symbol("accountAlias"), accountAlias)
        OpenAPI.validate_property(Balance200ResponseInner, Symbol("asset"), asset)
        OpenAPI.validate_property(Balance200ResponseInner, Symbol("balance"), balance)
        OpenAPI.validate_property(Balance200ResponseInner, Symbol("crossWalletBalance"), crossWalletBalance)
        OpenAPI.validate_property(Balance200ResponseInner, Symbol("crossUnPnl"), crossUnPnl)
        OpenAPI.validate_property(Balance200ResponseInner, Symbol("availableBalance"), availableBalance)
        OpenAPI.validate_property(Balance200ResponseInner, Symbol("maxWithdrawAmount"), maxWithdrawAmount)
        OpenAPI.validate_property(Balance200ResponseInner, Symbol("marginAvailable"), marginAvailable)
        OpenAPI.validate_property(Balance200ResponseInner, Symbol("updateTime"), updateTime)
        return new(accountAlias, asset, balance, crossWalletBalance, crossUnPnl, availableBalance, maxWithdrawAmount, marginAvailable, updateTime, )
    end
end # type Balance200ResponseInner

const _property_types_Balance200ResponseInner = Dict{Symbol,String}(Symbol("accountAlias")=>"String", Symbol("asset")=>"String", Symbol("balance")=>"String", Symbol("crossWalletBalance")=>"String", Symbol("crossUnPnl")=>"String", Symbol("availableBalance")=>"String", Symbol("maxWithdrawAmount")=>"String", Symbol("marginAvailable")=>"Bool", Symbol("updateTime")=>"Int64", )
OpenAPI.property_type(::Type{ Balance200ResponseInner }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_Balance200ResponseInner[name]))}

function check_required(o::Balance200ResponseInner)
    true
end

function OpenAPI.validate_property(::Type{ Balance200ResponseInner }, name::Symbol, val)









    if name === Symbol("updateTime")
        OpenAPI.validate_param(name, "Balance200ResponseInner", :format, val, "int64")
    end
end
