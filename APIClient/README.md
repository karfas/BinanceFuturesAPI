# Julia API client for APIClient

Binance official supported Postman collections.

- API documents: https://binance-docs.github.io/apidocs/futures/en/
- Telegram: https://t.me/binance_api_english
- Open Issue at: https://github.com/binance-exchange/binance-api-postman

Converted to OpenAPI 3.0.3 using https://kevinswiber.github.io/postman2openapi/


## Overview
This API client was generated by the [OpenAPI Generator](https://openapi-generator.tech) project.  By using the [openapi-spec](https://openapis.org) from a remote server, you can easily generate an API client.

- API version: 1.0.0
- Generator version: 7.11.0-SNAPSHOT
- Build package: org.openapitools.codegen.languages.JuliaClientCodegen


## Installation
Place the Julia files generated under the `src` folder in your Julia project. Include APIClient.jl in the project code.
It would include the module named APIClient.

Documentation is generated as markdown files under the `docs` folder. You can include them in your project documentation.
Documentation is also embedded in Julia which can be used with a Julia specific documentation generator.

## API Endpoints

Class | Method
------------ | -------------
*AccountApi* | [**account**](docs/AccountApi.md#account)<br/>**GET** /fapi/v3/account<br/>Account information
*AccountApi* | [**adl_quantile**](docs/AccountApi.md#adl_quantile)<br/>**GET** /fapi/v1/adlQuantile<br/>Position ADL Quantile Estimation (USER_DATA)
*AccountApi* | [**api_trading_status**](docs/AccountApi.md#api_trading_status)<br/>**GET** /fapi/v1/apiTradingStatus<br/>Account API Trading Status
*AccountApi* | [**balance**](docs/AccountApi.md#balance)<br/>**GET** /fapi/v3/balance<br/>Future Account Balance
*AccountApi* | [**commission_rate**](docs/AccountApi.md#commission_rate)<br/>**GET** /fapi/v1/commissionRate<br/>User Commission Rate (USER_DATA)
*AccountApi* | [**income**](docs/AccountApi.md#income)<br/>**GET** /fapi/v1/income<br/>Get Income History
*AccountApi* | [**leverage_bracket**](docs/AccountApi.md#leverage_bracket)<br/>**GET** /fapi/v1/leverageBracket<br/>Notional and Leverage Brackets
*AccountApi* | [**position_risk**](docs/AccountApi.md#position_risk)<br/>**GET** /fapi/v3/positionRisk<br/>Position Risk
*AccountApi* | [**user_trades**](docs/AccountApi.md#user_trades)<br/>**GET** /fapi/v1/userTrades<br/>Account Trade List
*DataStreamApi* | [**delete_listen_key**](docs/DataStreamApi.md#delete_listen_key)<br/>**DELETE** /fapi/v1/listenKey<br/>Delete Listen Key
*DataStreamApi* | [**post_listen_key**](docs/DataStreamApi.md#post_listen_key)<br/>**POST** /fapi/v1/listenKey<br/>Create New Listen Key
*DataStreamApi* | [**put_listen_key**](docs/DataStreamApi.md#put_listen_key)<br/>**PUT** /fapi/v1/listenKey<br/>Renew Listen Key
*MarketApi* | [**agg_trades**](docs/MarketApi.md#agg_trades)<br/>**GET** /fapi/v1/aggTrades<br/>Compressed/Aggregate Trades List
*MarketApi* | [**asset_index**](docs/MarketApi.md#asset_index)<br/>**GET** /fapi/v1/assetIndex<br/>Multi-Assets Mode Asset Index
*MarketApi* | [**basis**](docs/MarketApi.md#basis)<br/>**GET** /fapi/v1/basis<br/>Basis
*MarketApi* | [**book_ticker**](docs/MarketApi.md#book_ticker)<br/>**GET** /fapi/v1/ticker/bookTicker<br/>Symbol Order Book Ticker
*MarketApi* | [**constituents**](docs/MarketApi.md#constituents)<br/>**GET** /fapi/v1/constituents<br/>Query Index Price Constituents
*MarketApi* | [**continuous_klines**](docs/MarketApi.md#continuous_klines)<br/>**GET** /fapi/v1/continuousKlines<br/>Continuous Contract Kline/Candlestick Data
*MarketApi* | [**depth**](docs/MarketApi.md#depth)<br/>**GET** /fapi/v1/depth<br/>Order Book
*MarketApi* | [**exchange_info**](docs/MarketApi.md#exchange_info)<br/>**GET** /fapi/v1/exchangeInfo<br/>Exchange Information
*MarketApi* | [**funding_rate**](docs/MarketApi.md#funding_rate)<br/>**GET** /fapi/v1/fundingRate<br/>Get Funding Rate History
*MarketApi* | [**global_long_short_account_ratio**](docs/MarketApi.md#global_long_short_account_ratio)<br/>**GET** /fapi/v1/globalLongShortAccountRatio<br/>Long/Short Ratio
*MarketApi* | [**historical_trades**](docs/MarketApi.md#historical_trades)<br/>**GET** /fapi/v1/historicalTrades<br/>Old Trades Lookup (MARKET_DATA)
*MarketApi* | [**index_info**](docs/MarketApi.md#index_info)<br/>**GET** /fapi/v1/indexInfo<br/>Composite Index Symbol Information
*MarketApi* | [**index_price_klines**](docs/MarketApi.md#index_price_klines)<br/>**GET** /fapi/v1/indexPriceKlines<br/>Index Price Kline/Candlestick Data
*MarketApi* | [**klines**](docs/MarketApi.md#klines)<br/>**GET** /fapi/v1/klines<br/>Kline/Candlestick Data
*MarketApi* | [**lvt_klines**](docs/MarketApi.md#lvt_klines)<br/>**GET** /fapi/v1/lvtKlines<br/>Historical BLVT NAV Kline/Candlestick
*MarketApi* | [**mark_price_klines**](docs/MarketApi.md#mark_price_klines)<br/>**GET** /fapi/v1/markPriceKlines<br/>Mark Price Kline/Candlestick Data
*MarketApi* | [**open_interest**](docs/MarketApi.md#open_interest)<br/>**GET** /fapi/v1/openInterest<br/>Open Interest
*MarketApi* | [**open_interest_hist**](docs/MarketApi.md#open_interest_hist)<br/>**GET** /futures/data/openInterestHist<br/>Open Interest Statistics
*MarketApi* | [**ping**](docs/MarketApi.md#ping)<br/>**GET** /fapi/v1/ping<br/>Test Connectivity
*MarketApi* | [**premium_index**](docs/MarketApi.md#premium_index)<br/>**GET** /fapi/v1/premiumIndex<br/>Mark Price
*MarketApi* | [**server_time**](docs/MarketApi.md#server_time)<br/>**GET** /fapi/v1/time<br/>Check Server Time
*MarketApi* | [**taker_long_short_ratio**](docs/MarketApi.md#taker_long_short_ratio)<br/>**GET** /fapi/v1/takerlongshortRatio<br/>Taker Buy/Sell Volume
*MarketApi* | [**ticker24hr**](docs/MarketApi.md#ticker24hr)<br/>**GET** /fapi/v1/ticker/24hr<br/>24hr Ticker Price Change Statistics
*MarketApi* | [**ticker_price**](docs/MarketApi.md#ticker_price)<br/>**GET** /fapi/v2/ticker/price<br/>Symbol Price Ticker V2
*MarketApi* | [**top_long_short_account_ratio**](docs/MarketApi.md#top_long_short_account_ratio)<br/>**GET** /fapi/v1/topLongShortAccountRatio<br/>Top Trader Long/Short Ratio (Accounts)
*MarketApi* | [**top_long_short_position_ratio**](docs/MarketApi.md#top_long_short_position_ratio)<br/>**GET** /fapi/v1/topLongShortPositionRatio<br/>Top Trader Long/Short Ratio (Positions)
*MarketApi* | [**trades**](docs/MarketApi.md#trades)<br/>**GET** /fapi/v1/trades<br/>Recent Trades List
*OrderApi* | [**all_orders**](docs/OrderApi.md#all_orders)<br/>**GET** /fapi/v1/allOrders<br/>All Orders
*OrderApi* | [**delete_all_open_orders**](docs/OrderApi.md#delete_all_open_orders)<br/>**DELETE** /fapi/v1/allOpenOrders<br/>Cancel All Open Orders
*OrderApi* | [**delete_batch_orders**](docs/OrderApi.md#delete_batch_orders)<br/>**DELETE** /fapi/v1/batchOrders<br/>Cancel Multiple Orders (TRADE)
*OrderApi* | [**delete_order**](docs/OrderApi.md#delete_order)<br/>**DELETE** /fapi/v1/order<br/>Cancel Order
*OrderApi* | [**force_orders**](docs/OrderApi.md#force_orders)<br/>**GET** /fapi/v1/forceOrders<br/>User&#39;s Force Orders (USER_DATA)
*OrderApi* | [**get_open_order**](docs/OrderApi.md#get_open_order)<br/>**GET** /fapi/v1/openOrder<br/>Query Current Open Order (USER_DATA)
*OrderApi* | [**get_open_orders**](docs/OrderApi.md#get_open_orders)<br/>**GET** /fapi/v1/openOrders<br/>Current All Open Orders (USER_DATA)
*OrderApi* | [**get_order**](docs/OrderApi.md#get_order)<br/>**GET** /fapi/v1/order<br/>Query Order
*OrderApi* | [**get_order_amendment**](docs/OrderApi.md#get_order_amendment)<br/>**GET** /fapi/v1/orderAmendment<br/>Get Order Modify History (USER_DATA)
*OrderApi* | [**get_order_download_id**](docs/OrderApi.md#get_order_download_id)<br/>**GET** /fapi/v1/order/asyn<br/>Get Download Id For Futures Order History (USER_DATA)
*OrderApi* | [**get_order_download_link_id**](docs/OrderApi.md#get_order_download_link_id)<br/>**GET** /fapi/v1/order/asyn/id<br/>Get Futures Order History Download Link by Id (USER_DATA)
*OrderApi* | [**get_trade_download_id**](docs/OrderApi.md#get_trade_download_id)<br/>**GET** /fapi/v1/trade/asyn<br/>Get Download Id For Futures Trade History (USER_DATA)
*OrderApi* | [**get_trade_download_link_id**](docs/OrderApi.md#get_trade_download_link_id)<br/>**GET** /fapi/v1/trade/asyn/id<br/>Get Futures Trade Download Link by Id (USER_DATA)
*OrderApi* | [**post_batch_orders**](docs/OrderApi.md#post_batch_orders)<br/>**POST** /fapi/v1/batchOrders<br/>Place Multiple Orders (TRADE)
*OrderApi* | [**post_order**](docs/OrderApi.md#post_order)<br/>**POST** /fapi/v1/order<br/>New Order (TRADE)
*OrderApi* | [**put_batch_orders**](docs/OrderApi.md#put_batch_orders)<br/>**PUT** /fapi/v1/batchOrders<br/>Modify Multiple Orders (TRADE)
*OrderApi* | [**put_order**](docs/OrderApi.md#put_order)<br/>**PUT** /fapi/v1/order<br/>Modify Order (TRADE)
*PortfolioMarginApi* | [**get_p_m_account_info**](docs/PortfolioMarginApi.md#get_p_m_account_info)<br/>**GET** /fapi/v1/pmAccountInfo<br/>Portfolio Margin Account Information
*TradeApi* | [**get_position_margin_history**](docs/TradeApi.md#get_position_margin_history)<br/>**GET** /fapi/v1/positionMargin/history<br/>Get Postion Margin Change History
*TradeApi* | [**multi_assets_margin**](docs/TradeApi.md#multi_assets_margin)<br/>**GET** /fapi/v1/multiAssetsMargin<br/>Get Current Multi-Assets Mode
*TradeApi* | [**post_leverage**](docs/TradeApi.md#post_leverage)<br/>**POST** /fapi/v1/leverage<br/>Change Initial Leverage
*TradeApi* | [**post_margin_type**](docs/TradeApi.md#post_margin_type)<br/>**POST** /fapi/v1/marginType<br/>Change Margin Type
*TradeApi* | [**post_multi_assets_margin**](docs/TradeApi.md#post_multi_assets_margin)<br/>**POST** /fapi/v1/multiAssetsMargin<br/>Change Multi-Assets Mode
*TradeApi* | [**post_position_margin**](docs/TradeApi.md#post_position_margin)<br/>**POST** /fapi/v1/positionMargin<br/>Modify Isolated Position Margin
*TradeApi* | [**post_position_side_dual**](docs/TradeApi.md#post_position_side_dual)<br/>**POST** /fapi/v1/positionSide/dual<br/>Change Position Mode（TRADE）


## Models

 - [Account200Response](docs/Account200Response.md)
 - [Account200ResponseAssetsInner](docs/Account200ResponseAssetsInner.md)
 - [Account200ResponsePositionsInner](docs/Account200ResponsePositionsInner.md)
 - [AggregateTradesResponseInner](docs/AggregateTradesResponseInner.md)
 - [AllOrdersResponseInner](docs/AllOrdersResponseInner.md)
 - [ApiTradingStatusResponse](docs/ApiTradingStatusResponse.md)
 - [ApiTradingStatusResponseIndicators](docs/ApiTradingStatusResponseIndicators.md)
 - [ApiTradingStatusResponseIndicatorsBTCUSDT](docs/ApiTradingStatusResponseIndicatorsBTCUSDT.md)
 - [ApiTradingStatusResponseTriggerCondition](docs/ApiTradingStatusResponseTriggerCondition.md)
 - [Balance200ResponseInner](docs/Balance200ResponseInner.md)
 - [BinanceError](docs/BinanceError.md)
 - [BookTicker200Response](docs/BookTicker200Response.md)
 - [BookTickerResponseO](docs/BookTickerResponseO.md)
 - [Depth200Response](docs/Depth200Response.md)
 - [ExchangeInfoResponse](docs/ExchangeInfoResponse.md)
 - [ExchangeInfoResponseAssetsInner](docs/ExchangeInfoResponseAssetsInner.md)
 - [ExchangeInfoResponseRateLimitsInner](docs/ExchangeInfoResponseRateLimitsInner.md)
 - [ExchangeInfoResponseSymbolsInner](docs/ExchangeInfoResponseSymbolsInner.md)
 - [ExchangeInfoResponseSymbolsInnerFiltersInner](docs/ExchangeInfoResponseSymbolsInnerFiltersInner.md)
 - [ForceOrders200ResponseInner](docs/ForceOrders200ResponseInner.md)
 - [FundingRateResponseInner](docs/FundingRateResponseInner.md)
 - [HistoricalTradesResponseInner](docs/HistoricalTradesResponseInner.md)
 - [Income200ResponseInner](docs/Income200ResponseInner.md)
 - [KlinesResponseInnerInner](docs/KlinesResponseInnerInner.md)
 - [LeverageBracket200ResponseInner](docs/LeverageBracket200ResponseInner.md)
 - [LeverageBracket200ResponseInnerBracketsInner](docs/LeverageBracket200ResponseInnerBracketsInner.md)
 - [LeverageResponse](docs/LeverageResponse.md)
 - [ListenKeyResponse](docs/ListenKeyResponse.md)
 - [MarkPriceResponseInner](docs/MarkPriceResponseInner.md)
 - [MultiAssetsMarginResponse](docs/MultiAssetsMarginResponse.md)
 - [OrderAmendmentHistoryResponseInner](docs/OrderAmendmentHistoryResponseInner.md)
 - [OrderResponse](docs/OrderResponse.md)
 - [PortfolioMarginAccountResponse](docs/PortfolioMarginAccountResponse.md)
 - [PortfolioMarginAccountResponseAssetsInner](docs/PortfolioMarginAccountResponseAssetsInner.md)
 - [PortfolioMarginAccountResponsePositionsInner](docs/PortfolioMarginAccountResponsePositionsInner.md)
 - [PositionMarginHistoryResponseInner](docs/PositionMarginHistoryResponseInner.md)
 - [PositionMarginResponse](docs/PositionMarginResponse.md)
 - [PositionModeResponse](docs/PositionModeResponse.md)
 - [PositionRisk200ResponseInner](docs/PositionRisk200ResponseInner.md)
 - [PositionRiskResponseInner](docs/PositionRiskResponseInner.md)
 - [PremiumIndexResponseInner](docs/PremiumIndexResponseInner.md)
 - [ServerTime200Response](docs/ServerTime200Response.md)
 - [SymbolPriceTickerResponseInner](docs/SymbolPriceTickerResponseInner.md)
 - [Ticker24hr200Response](docs/Ticker24hr200Response.md)
 - [TickerPriceChangeResponseInner](docs/TickerPriceChangeResponseInner.md)
 - [UserTrades200ResponseInner](docs/UserTrades200ResponseInner.md)
 - [UserTradesResponseInner](docs/UserTradesResponseInner.md)


<a id="authorization"></a>
## Authorization
Endpoints do not require authorization.


## Author



