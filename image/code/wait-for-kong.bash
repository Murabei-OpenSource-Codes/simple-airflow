#!/bin/bash
set -e


if [[ -z "${KONG_API_URL}" ]]; then
    echo "KONG_API_URL not set, service won't be registered on Kong"
else
    echo "############################"
    echo "Waiting fot kong to kick in!"
    echo "############################"

    until curl -sSf ${KONG_API_URL} > /dev/null; do
        >&2 echo "Kong is not ready"
        sleep 1
    done
    echo "Kong is ok!"
fi
