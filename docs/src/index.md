# BinanceFuturesAPI.jl Documentation

Welcome to the documentation for BinanceFuturesAPI.jl, a Julia package that provides a type-safe interface to the Binance USDT-M Futures API.

## Overview

BinanceFuturesAPI.jl is generated from the official Binance Futures API OpenAPI specification and provides a comprehensive interface to interact with the Binance Futures trading platform.

## Features

- Complete coverage of Binance USDT-M Futures API endpoints
- Type-safe API interface
- Automatic request signing for authenticated endpoints
- WebSocket support for real-time data
- Comprehensive error handling

## Installation

To install BinanceFuturesAPI.jl, use Julia's package manager:

```julia
using Pkg
Pkg.add("BinanceFuturesAPI")
```

## Quick Start

Here's a simple example to get started:

```julia
using BinanceFuturesAPI

# Create a Market API client
market = MarketApi("https://fapi.binance.com")

# Get exchange information
info = exchange_information(market)

# Get klines (candlestick) data
klines = klines(market, symbol="BTCUSDT", interval="1m", limit=100)

# Create an authenticated client for trading
api_key = "your_api_key"
api_secret = "your_api_secret"
trade = TradeApi("https://fapi.binance.com", api_key, api_secret)

# Place a new order
order = new_order(trade,
    symbol="BTCUSDT",
    side="BUY",
    order_type="LIMIT",
    quantity=0.001,
    price=50000.0,
    time_in_force="GTC",
    timestamp=Int64(time() * 1000)
)
```

## API Structure

The API is organized into several modules:

- [`BinanceFuturesAPI.MarketApi`](@ref): For accessing market data
- [`BinanceFuturesAPI.TradeApi`](@ref): For trading operations
- [`BinanceFuturesAPI.AccountApi`](@ref): For account management
- [`BinanceFuturesAPI.DataStreamApi`](@ref): For WebSocket streams
- [`BinanceFuturesAPI.PortfolioMarginApi`](@ref): For portfolio margin operations

Each module provides specific functionality and is documented in detail in the API Reference section.
