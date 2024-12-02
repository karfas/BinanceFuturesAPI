# Data Stream API

The Data Stream API provides functionality for managing WebSocket data streams, including user data streams for real-time account and order updates.

## Data Stream API Reference

```@docs
BinanceFuturesAPI.DataStreamApi
APIClient.create_new_listen_key
APIClient.delete_listen_key
APIClient.renew_listen_key
```

## Examples

### Managing User Data Streams

```julia
using BinanceFuturesAPI

# Create a DataStreamApi client with your API key
stream = DataStreamApi("https://fapi.binance.com", "your_api_key")

# Create a new listen key for user data stream
response = create_new_listen_key(stream, x_mbx_apikey="your_api_key")
listen_key = response.listenKey

# Keep the listen key alive by renewing it periodically (every 30 minutes)
renew_response = renew_listen_key(stream, x_mbx_apikey="your_api_key")

# When done with the stream, delete the listen key
delete_response = delete_listen_key(stream, x_mbx_apikey="your_api_key")
```

### Using WebSocket Streams

The listen key obtained from `create_new_listen_key` can be used to establish a WebSocket connection for real-time updates. The WebSocket endpoint for user data stream is:

```
wss://fstream.binance.com/ws/<listen_key>
```

You'll receive real-time updates for:
- Account updates (balances, positions)
- Order updates
- Trade updates
- Margin calls

### Best Practices

1. **Listen Key Management**
   - Store the listen key securely
   - Renew it every 30 minutes to keep the stream alive
   - Delete it when you're done to free up resources

2. **Error Handling**
   ```julia
   try
       # Create a new listen key
       response = create_new_listen_key(stream, x_mbx_apikey="your_api_key")
       listen_key = response.listenKey
   catch e
       println("Error creating listen key: $e")
   end
   ```

3. **Automatic Renewal**
   ```julia
   using Dates

   function keep_listen_key_alive(stream::DataStreamApi, api_key::String)
       while true
           try
               renew_listen_key(stream, x_mbx_apikey=api_key)
               sleep(1800) # Sleep for 30 minutes
           catch e
               println("Error renewing listen key: $e")
               break
           end
       end
   end
   ```

### WebSocket Message Examples

Here are examples of messages you might receive on your user data stream:

1. Account Update
```json
{
  "e": "ACCOUNT_UPDATE",
  "T": 1564034571105,
  "E": 1564034571111,
  "a": {
    "B": [
      {
        "a": "USDT",
        "wb": "122.96000000",
        "cw": "100.96000000"
      }
    ],
    "P": [
      {
        "s": "BTCUSDT",
        "pa": "0.002",
        "ep": "9000.00000",
        "up": "20.00000000"
      }
    ]
  }
}
```

2. Order Update
```json
{
  "e": "ORDER_TRADE_UPDATE",
  "T": 1564034571105,
  "E": 1564034571111,
  "o": {
    "s": "BTCUSDT",
    "c": "TEST",
    "S": "BUY",
    "o": "LIMIT",
    "f": "GTC",
    "q": "0.001",
    "p": "9000",
    "X": "NEW"
  }
}
```

### Rate Limits

- WebSocket connections are limited to 5 incoming messages per second
- A single listen key can only have one active WebSocket connection
- Listen keys expire after 60 minutes if not renewed
