#!/usr/bin/env bash

set -e

export DOLLAR="$"

function envreplace() {
    TEMPLATE_FILE=$1
    FILE="${TEMPLATE_FILE%.*}"
    echo "Replacing hipex template ${TEMPLATE_FILE} to ${FILE}"
    envsubst < "${TEMPLATE_FILE}" > "${FILE}"
}

export -f envreplace
find /app -xdev -name \*.hipextemplate -exec bash -c 'envreplace "$0"' {} \;
find /etc/nginx -xdev -name \*.hipextemplate -exec bash -c 'envreplace "$0"' {} \;

echo "Finished env replace, continue startup"
