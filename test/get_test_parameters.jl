using ConfigFile

ConfigFile.default_config_data() = BinanceFuturesAPI.default_test_config()
test_verbose() = false

function get_test_parameters()
    conf = ConfigFile.ConfigData("binance-client", :test).rest_api
    return conf[:base_url], conf[:api_key], conf[:api_secret]
end
