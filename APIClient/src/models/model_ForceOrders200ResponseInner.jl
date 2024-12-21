# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""forceOrders_200_response_inner

    ForceOrders200ResponseInner(;
        orderId=nothing,
        symbol=nothing,
        status=nothing,
        clientOrderId=nothing,
        price=nothing,
        avgPrice=nothing,
        origQty=nothing,
        executedQty=nothing,
        cumQuote=nothing,
        timeInForce=nothing,
        type=nothing,
        reduceOnly=nothing,
        closePosition=nothing,
        side=nothing,
        positionSide=nothing,
        stopPrice=nothing,
        workingType=nothing,
        priceProtect=nothing,
        origType=nothing,
        time=nothing,
        updateTime=nothing,
    )

    - orderId::Int64 : Order ID
    - symbol::String : Trading symbol
    - status::String : Order status
    - clientOrderId::String : Client order ID
    - price::String : Order price
    - avgPrice::String : Average fill price
    - origQty::String : Original quantity
    - executedQty::String : Executed quantity
    - cumQuote::String : Cumulative quote asset transacted quantity
    - timeInForce::String : Time in force
    - type::String : Order type
    - reduceOnly::Bool : Reduce only flag
    - closePosition::Bool : Close position flag
    - side::String : Order side (BUY/SELL)
    - positionSide::String : Position side
    - stopPrice::String : Stop price
    - workingType::String : Working type
    - priceProtect::Bool : Price protection flag
    - origType::String : Original order type
    - time::Int64 : Order creation time
    - updateTime::Int64 : Last update time
"""
Base.@kwdef mutable struct ForceOrders200ResponseInner <: OpenAPI.APIModel
    orderId::Union{Nothing, Int64} = nothing
    symbol::Union{Nothing, String} = nothing
    status::Union{Nothing, String} = nothing
    clientOrderId::Union{Nothing, String} = nothing
    price::Union{Nothing, String} = nothing
    avgPrice::Union{Nothing, String} = nothing
    origQty::Union{Nothing, String} = nothing
    executedQty::Union{Nothing, String} = nothing
    cumQuote::Union{Nothing, String} = nothing
    timeInForce::Union{Nothing, String} = nothing
    type::Union{Nothing, String} = nothing
    reduceOnly::Union{Nothing, Bool} = nothing
    closePosition::Union{Nothing, Bool} = nothing
    side::Union{Nothing, String} = nothing
    positionSide::Union{Nothing, String} = nothing
    stopPrice::Union{Nothing, String} = nothing
    workingType::Union{Nothing, String} = nothing
    priceProtect::Union{Nothing, Bool} = nothing
    origType::Union{Nothing, String} = nothing
    time::Union{Nothing, Int64} = nothing
    updateTime::Union{Nothing, Int64} = nothing

    function ForceOrders200ResponseInner(orderId, symbol, status, clientOrderId, price, avgPrice, origQty, executedQty, cumQuote, timeInForce, type, reduceOnly, closePosition, side, positionSide, stopPrice, workingType, priceProtect, origType, time, updateTime, )
        OpenAPI.validate_property(ForceOrders200ResponseInner, Symbol("orderId"), orderId)
        OpenAPI.validate_property(ForceOrders200ResponseInner, Symbol("symbol"), symbol)
        OpenAPI.validate_property(ForceOrders200ResponseInner, Symbol("status"), status)
        OpenAPI.validate_property(ForceOrders200ResponseInner, Symbol("clientOrderId"), clientOrderId)
        OpenAPI.validate_property(ForceOrders200ResponseInner, Symbol("price"), price)
        OpenAPI.validate_property(ForceOrders200ResponseInner, Symbol("avgPrice"), avgPrice)
        OpenAPI.validate_property(ForceOrders200ResponseInner, Symbol("origQty"), origQty)
        OpenAPI.validate_property(ForceOrders200ResponseInner, Symbol("executedQty"), executedQty)
        OpenAPI.validate_property(ForceOrders200ResponseInner, Symbol("cumQuote"), cumQuote)
        OpenAPI.validate_property(ForceOrders200ResponseInner, Symbol("timeInForce"), timeInForce)
        OpenAPI.validate_property(ForceOrders200ResponseInner, Symbol("type"), type)
        OpenAPI.validate_property(ForceOrders200ResponseInner, Symbol("reduceOnly"), reduceOnly)
        OpenAPI.validate_property(ForceOrders200ResponseInner, Symbol("closePosition"), closePosition)
        OpenAPI.validate_property(ForceOrders200ResponseInner, Symbol("side"), side)
        OpenAPI.validate_property(ForceOrders200ResponseInner, Symbol("positionSide"), positionSide)
        OpenAPI.validate_property(ForceOrders200ResponseInner, Symbol("stopPrice"), stopPrice)
        OpenAPI.validate_property(ForceOrders200ResponseInner, Symbol("workingType"), workingType)
        OpenAPI.validate_property(ForceOrders200ResponseInner, Symbol("priceProtect"), priceProtect)
        OpenAPI.validate_property(ForceOrders200ResponseInner, Symbol("origType"), origType)
        OpenAPI.validate_property(ForceOrders200ResponseInner, Symbol("time"), time)
        OpenAPI.validate_property(ForceOrders200ResponseInner, Symbol("updateTime"), updateTime)
        return new(orderId, symbol, status, clientOrderId, price, avgPrice, origQty, executedQty, cumQuote, timeInForce, type, reduceOnly, closePosition, side, positionSide, stopPrice, workingType, priceProtect, origType, time, updateTime, )
    end
end # type ForceOrders200ResponseInner

const _property_types_ForceOrders200ResponseInner = Dict{Symbol,String}(Symbol("orderId")=>"Int64", Symbol("symbol")=>"String", Symbol("status")=>"String", Symbol("clientOrderId")=>"String", Symbol("price")=>"String", Symbol("avgPrice")=>"String", Symbol("origQty")=>"String", Symbol("executedQty")=>"String", Symbol("cumQuote")=>"String", Symbol("timeInForce")=>"String", Symbol("type")=>"String", Symbol("reduceOnly")=>"Bool", Symbol("closePosition")=>"Bool", Symbol("side")=>"String", Symbol("positionSide")=>"String", Symbol("stopPrice")=>"String", Symbol("workingType")=>"String", Symbol("priceProtect")=>"Bool", Symbol("origType")=>"String", Symbol("time")=>"Int64", Symbol("updateTime")=>"Int64", )
OpenAPI.property_type(::Type{ ForceOrders200ResponseInner }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_ForceOrders200ResponseInner[name]))}

function check_required(o::ForceOrders200ResponseInner)
    true
end

function OpenAPI.validate_property(::Type{ ForceOrders200ResponseInner }, name::Symbol, val)
    if name === Symbol("orderId")
        OpenAPI.validate_param(name, "ForceOrders200ResponseInner", :format, val, "int64")
    end
    if name === Symbol("time")
        OpenAPI.validate_param(name, "ForceOrders200ResponseInner", :format, val, "int64")
    end
    if name === Symbol("updateTime")
        OpenAPI.validate_param(name, "ForceOrders200ResponseInner", :format, val, "int64")
    end
end