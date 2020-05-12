#!/usr/bin/env bash

set -e

function envreplace() {
    TEMPLATE_FILE=$1
    CONTENT=$(envsubst < "${TEMPLATE_FILE}")
    FILE="${TEMPLATE_FILE%.*}"
    echo "Replacing hipex template ${TEMPLATE_FILE} to ${FILE}"
    echo "${CONTENT}" > "${FILE}"
}

export -f envreplace
find /app -name \*.hipextemplate -exec bash -c 'envreplace "$0"' {} \;
find /etc/nginx -name \*.hipextemplate -exec bash -c 'envreplace "$0"' {} \;

echo "Finished env replace, continue startup"

exec "$@"
