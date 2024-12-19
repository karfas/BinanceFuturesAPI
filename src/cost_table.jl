    # Cost management constants
    const COST_LIMIT = 2400
    const COST_LIMIT_SAFETY_MARGIN = 500

    # Define costs for different API endpoints
    const WEIGHT_HEAVY = 30    # For heavy operations like income history
    const WEIGHT_HIGH = 20     # For operations like historical trades
    const WEIGHT_MEDIUM = 5    # For common operations like depth, trades
    const WEIGHT_LOW = 2       # For simple queries
    const WEIGHT_MINIMAL = 1   # For basic operations

    # Initialize cost table after all includes
    const COST_TABLE = Dict{Symbol, Int32}(
            # Market Data Endpoints
            :agg_trades => 7,
            :depth => WEIGHT_MEDIUM,
            :trades => WEIGHT_MEDIUM,
            :historical_trades => WEIGHT_HIGH,
            :klines => WEIGHT_MEDIUM,
            :continuous_klines => WEIGHT_MEDIUM,
            :funding_rate => WEIGHT_MINIMAL,
            :ticker24hr => WEIGHT_MINIMAL,
            :ticker_price => WEIGHT_MINIMAL,
            :book_ticker => WEIGHT_LOW,

            # Account/Trade Endpoints
            :account => WEIGHT_MEDIUM,
            :balance => WEIGHT_MEDIUM,
            :position_risk => WEIGHT_MEDIUM,
            :user_trades => WEIGHT_MEDIUM,
            :income => WEIGHT_HEAVY,
            :leverage_bracket => WEIGHT_MEDIUM,
            :commission_rate => WEIGHT_HIGH,
            :api_trading_status => WEIGHT_MINIMAL,

            # Order Endpoints
            :new_order => WEIGHT_MINIMAL,
            :modify_order => WEIGHT_MINIMAL,
            :get_order => WEIGHT_LOW,
            :cancel_order => WEIGHT_MINIMAL,
            :cancel_all_orders => WEIGHT_MINIMAL,
            :current_all_open_orders => 3,
            :current_open_orders => 3,
            :all_orders => WEIGHT_MEDIUM,
            :force_orders => WEIGHT_HIGH,
            :download_transactions_asyn => WEIGHT_MEDIUM,

            # Position Endpoints
            :post_position_margin => WEIGHT_MINIMAL,
            :get_position_margin_history => WEIGHT_MINIMAL,
            :post_leverage => WEIGHT_MINIMAL,
            :post_margin_type => WEIGHT_MINIMAL,
            :multi_assets_margin => WEIGHT_HEAVY,
            :post_multi_assets_margin => WEIGHT_MINIMAL,
            :post_position_side_dual => WEIGHT_MINIMAL
        )
