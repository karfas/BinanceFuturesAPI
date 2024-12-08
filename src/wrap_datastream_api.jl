    # Data Stream API wrapper functions
    function create_listen_key(cl::Client; kwargs...)
        (response, headers) = APIClient.create_listen_key(cl.ds_api; kwargs...)
        response
    end

    function delete_listen_key(cl::Client; kwargs...)
        (response, headers) = APIClient.delete_listen_key(cl.ds_api; kwargs...)
        response
    end

    function keepalive_listen_key(cl::Client; kwargs...)
        (response, headers) = APIClient.keepalive_listen_key(cl.ds_api; kwargs...)
        response
    end

    # Export data stream API functions
    export create_listen_key, delete_listen_key, keepalive_listen_key
