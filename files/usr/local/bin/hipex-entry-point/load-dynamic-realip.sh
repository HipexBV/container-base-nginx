#!/usr/bin/env bash

set -e

function getRealIpStatements() {
    URL=$1
    echo "# - ${URL}";
    for LINE in $(curl "${URL}"); do
        echo "set_real_ip_from ${LINE};"
    done
}

CONFIG_FILE_PATH=/etc/nginx/conf.d/realip-dynamic.conf
echo "Loading dynamic IP's from targets ${DYNAMIC_REALIP_TARGETS} for nginx real_ip configuration"

export IFS=";"
for URL in $DYNAMIC_REALIP_TARGETS; do
    getRealIpStatements "${URL}" > ${CONFIG_FILE_PATH}
done

echo "Finished loading IP's"
cat "${CONFIG_FILE_PATH}"
