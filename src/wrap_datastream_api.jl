    # Datastream API wrapper functions

    list_subscriptions(cl::Client, args...; kwargs...) =       wrap!(cl, APIClient.list_subscriptions, cl.d_api, args...; kwargs...)
    create_listen_key(cl::Client, args...; kwargs...) =        wrap!(cl, APIClient.create_listen_key, cl.d_api, args...; kwargs...)
    ping_listen_key(cl::Client, args...; kwargs...) =          wrap!(cl, APIClient.ping_listen_key, cl.d_api, args...; kwargs...)
    close_listen_key(cl::Client, args...; kwargs...) =         wrap!(cl, APIClient.close_listen_key, cl.d_api, args...; kwargs...)

    # Export datastream API functions
    export list_subscriptions, create_listen_key, ping_listen_key, close_listen_key
