    # Datastream API wrapper functions

    post_listen_key(cl::Client, args...; kwargs...) =          wrap!(cl, APIClient.post_listen_key, cl.d_api, args...; kwargs...)
    delete_listen_key(cl::Client, args...; kwargs...) =       wrap!(cl, APIClient.delete_listen_key, cl.d_api, args...; kwargs...)
    put_listen_key(cl::Client, args...; kwargs...) =          wrap!(cl, APIClient.put_listen_key, cl.d_api, args...; kwargs...)

    # Export datastream API functions
    export post_listen_key, delete_listen_key, put_listen_key
