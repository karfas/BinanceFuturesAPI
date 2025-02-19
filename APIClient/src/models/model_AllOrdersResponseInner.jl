# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""AllOrdersResponse_inner

    AllOrdersResponseInner(;
        clientOrderId=nothing,
        cumQty=nothing,
        cumQuote=nothing,
        executedQty=nothing,
        orderId=nothing,
        avgPrice=nothing,
        origQty=nothing,
        price=nothing,
        reduceOnly=nothing,
        side=nothing,
        positionSide=nothing,
        status=nothing,
        stopPrice=nothing,
        closePosition=nothing,
        symbol=nothing,
        timeInForce=nothing,
        type=nothing,
        origType=nothing,
        activatePrice=nothing,
        priceRate=nothing,
        updateTime=nothing,
        workingType=nothing,
        priceProtect=nothing,
        time=nothing,
    )

    - clientOrderId::String : Client order ID
    - cumQty::String : Cumulative filled quantity
    - cumQuote::String : Cumulative quote asset filled quantity
    - executedQty::String : Executed quantity
    - orderId::Int64 : Order ID
    - avgPrice::String : Average fill price
    - origQty::String : Original quantity
    - price::String : Order price
    - reduceOnly::Bool : Reduce only flag
    - side::String : Order side (BUY/SELL)
    - positionSide::String : Position side (BOTH/LONG/SHORT)
    - status::String : Order status
    - stopPrice::String : Stop price
    - closePosition::Bool : Close position flag
    - symbol::String : Trading pair symbol
    - timeInForce::String : Time in force
    - type::String : Order type
    - origType::String : Original order type
    - activatePrice::String : Activation price for trailing stop orders
    - priceRate::String : Callback rate for trailing stop orders
    - updateTime::Int64 : Last update time
    - workingType::String : Working type (MARK_PRICE/CONTRACT_PRICE)
    - priceProtect::Bool : Price protection flag
    - time::Int64 : Order creation time
"""
Base.@kwdef mutable struct AllOrdersResponseInner <: OpenAPI.APIModel
    clientOrderId::Union{Nothing, String} = nothing
    cumQty::Union{Nothing, String} = nothing
    cumQuote::Union{Nothing, String} = nothing
    executedQty::Union{Nothing, String} = nothing
    orderId::Union{Nothing, Int64} = nothing
    avgPrice::Union{Nothing, String} = nothing
    origQty::Union{Nothing, String} = nothing
    price::Union{Nothing, String} = nothing
    reduceOnly::Union{Nothing, Bool} = nothing
    side::Union{Nothing, String} = nothing
    positionSide::Union{Nothing, String} = nothing
    status::Union{Nothing, String} = nothing
    stopPrice::Union{Nothing, String} = nothing
    closePosition::Union{Nothing, Bool} = nothing
    symbol::Union{Nothing, String} = nothing
    timeInForce::Union{Nothing, String} = nothing
    type::Union{Nothing, String} = nothing
    origType::Union{Nothing, String} = nothing
    activatePrice::Union{Nothing, String} = nothing
    priceRate::Union{Nothing, String} = nothing
    updateTime::Union{Nothing, Int64} = nothing
    workingType::Union{Nothing, String} = nothing
    priceProtect::Union{Nothing, Bool} = nothing
    time::Union{Nothing, Int64} = nothing

    function AllOrdersResponseInner(clientOrderId, cumQty, cumQuote, executedQty, orderId, avgPrice, origQty, price, reduceOnly, side, positionSide, status, stopPrice, closePosition, symbol, timeInForce, type, origType, activatePrice, priceRate, updateTime, workingType, priceProtect, time, )
        OpenAPI.validate_property(AllOrdersResponseInner, Symbol("clientOrderId"), clientOrderId)
        OpenAPI.validate_property(AllOrdersResponseInner, Symbol("cumQty"), cumQty)
        OpenAPI.validate_property(AllOrdersResponseInner, Symbol("cumQuote"), cumQuote)
        OpenAPI.validate_property(AllOrdersResponseInner, Symbol("executedQty"), executedQty)
        OpenAPI.validate_property(AllOrdersResponseInner, Symbol("orderId"), orderId)
        OpenAPI.validate_property(AllOrdersResponseInner, Symbol("avgPrice"), avgPrice)
        OpenAPI.validate_property(AllOrdersResponseInner, Symbol("origQty"), origQty)
        OpenAPI.validate_property(AllOrdersResponseInner, Symbol("price"), price)
        OpenAPI.validate_property(AllOrdersResponseInner, Symbol("reduceOnly"), reduceOnly)
        OpenAPI.validate_property(AllOrdersResponseInner, Symbol("side"), side)
        OpenAPI.validate_property(AllOrdersResponseInner, Symbol("positionSide"), positionSide)
        OpenAPI.validate_property(AllOrdersResponseInner, Symbol("status"), status)
        OpenAPI.validate_property(AllOrdersResponseInner, Symbol("stopPrice"), stopPrice)
        OpenAPI.validate_property(AllOrdersResponseInner, Symbol("closePosition"), closePosition)
        OpenAPI.validate_property(AllOrdersResponseInner, Symbol("symbol"), symbol)
        OpenAPI.validate_property(AllOrdersResponseInner, Symbol("timeInForce"), timeInForce)
        OpenAPI.validate_property(AllOrdersResponseInner, Symbol("type"), type)
        OpenAPI.validate_property(AllOrdersResponseInner, Symbol("origType"), origType)
        OpenAPI.validate_property(AllOrdersResponseInner, Symbol("activatePrice"), activatePrice)
        OpenAPI.validate_property(AllOrdersResponseInner, Symbol("priceRate"), priceRate)
        OpenAPI.validate_property(AllOrdersResponseInner, Symbol("updateTime"), updateTime)
        OpenAPI.validate_property(AllOrdersResponseInner, Symbol("workingType"), workingType)
        OpenAPI.validate_property(AllOrdersResponseInner, Symbol("priceProtect"), priceProtect)
        OpenAPI.validate_property(AllOrdersResponseInner, Symbol("time"), time)
        return new(clientOrderId, cumQty, cumQuote, executedQty, orderId, avgPrice, origQty, price, reduceOnly, side, positionSide, status, stopPrice, closePosition, symbol, timeInForce, type, origType, activatePrice, priceRate, updateTime, workingType, priceProtect, time, )
    end
end # type AllOrdersResponseInner

const _property_types_AllOrdersResponseInner = Dict{Symbol,String}(Symbol("clientOrderId")=>"String", Symbol("cumQty")=>"String", Symbol("cumQuote")=>"String", Symbol("executedQty")=>"String", Symbol("orderId")=>"Int64", Symbol("avgPrice")=>"String", Symbol("origQty")=>"String", Symbol("price")=>"String", Symbol("reduceOnly")=>"Bool", Symbol("side")=>"String", Symbol("positionSide")=>"String", Symbol("status")=>"String", Symbol("stopPrice")=>"String", Symbol("closePosition")=>"Bool", Symbol("symbol")=>"String", Symbol("timeInForce")=>"String", Symbol("type")=>"String", Symbol("origType")=>"String", Symbol("activatePrice")=>"String", Symbol("priceRate")=>"String", Symbol("updateTime")=>"Int64", Symbol("workingType")=>"String", Symbol("priceProtect")=>"Bool", Symbol("time")=>"Int64", )
OpenAPI.property_type(::Type{ AllOrdersResponseInner }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_AllOrdersResponseInner[name]))}

function check_required(o::AllOrdersResponseInner)
    true
end

function OpenAPI.validate_property(::Type{ AllOrdersResponseInner }, name::Symbol, val)
    if name === Symbol("orderId")
        OpenAPI.validate_param(name, "AllOrdersResponseInner", :format, val, "int64")
    end
    if name === Symbol("side")
        OpenAPI.validate_param(name, "AllOrdersResponseInner", :enum, val, ["BUY", "SELL"])
    end
    if name === Symbol("positionSide")
        OpenAPI.validate_param(name, "AllOrdersResponseInner", :enum, val, ["BOTH", "LONG", "SHORT"])
    end
    if name === Symbol("status")
        OpenAPI.validate_param(name, "AllOrdersResponseInner", :enum, val, ["NEW", "PARTIALLY_FILLED", "FILLED", "CANCELED", "REJECTED", "EXPIRED"])
    end
    if name === Symbol("timeInForce")
        OpenAPI.validate_param(name, "AllOrdersResponseInner", :enum, val, ["GTC", "IOC", "FOK", "GTX"])
    end
    if name === Symbol("type")
        OpenAPI.validate_param(name, "AllOrdersResponseInner", :enum, val, ["LIMIT", "MARKET", "STOP", "STOP_MARKET", "TAKE_PROFIT", "TAKE_PROFIT_MARKET", "TRAILING_STOP_MARKET"])
    end
    if name === Symbol("origType")
        OpenAPI.validate_param(name, "AllOrdersResponseInner", :enum, val, ["LIMIT", "MARKET", "STOP", "STOP_MARKET", "TAKE_PROFIT", "TAKE_PROFIT_MARKET", "TRAILING_STOP_MARKET"])
    end
    if name === Symbol("updateTime")
        OpenAPI.validate_param(name, "AllOrdersResponseInner", :format, val, "int64")
    end
    if name === Symbol("workingType")
        OpenAPI.validate_param(name, "AllOrdersResponseInner", :enum, val, ["MARK_PRICE", "CONTRACT_PRICE"])
    end
    if name === Symbol("time")
        OpenAPI.validate_param(name, "AllOrdersResponseInner", :format, val, "int64")
    end
end
