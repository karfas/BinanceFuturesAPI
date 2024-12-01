# BinanceFuturesAPI.jl

Documentation for BinanceFuturesAPI.jl

## Overview

BinanceFuturesAPI.jl is a Julia package that provides a type-safe interface to the Binance USDT-M Futures API. The package is generated from the official Binance Futures API OpenAPI specification.

## Installation

```julia
using Pkg
Pkg.add("BinanceFuturesAPI")
```

## Quick Start

```julia
using BinanceFuturesAPI

# Create a Market API client
client = MarketApi("https://fapi.binance.com")

# Get exchange information
info = client.exchangeInformation()

# Get klines (candlestick) data
klines = client.klines("BTCUSDT"; interval="1m", limit=100)
```

## Features

- Complete coverage of Binance USDT-M Futures API
- Type-safe API client generated from OpenAPI specification
- Support for all market data endpoints
- Support for trading operations
- Support for account and position management

## Package Structure

The package consists of several main components:

- `MarketApi`: Interface for market data endpoints
- `TradeApi`: Interface for trading operations
- `AccountApi`: Interface for account management
- Generated models for all API responses

See the API Reference section for detailed documentation of each component.
