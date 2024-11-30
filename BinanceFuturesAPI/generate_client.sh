#!/bin/bash
#
# generate_client.sh
#
docker run --rm \
    -v $PWD:/local openapitools/openapi-generator-cli generate \
    -i /local/binance_futures.yaml \
    -g julia-client \
    -o /local/