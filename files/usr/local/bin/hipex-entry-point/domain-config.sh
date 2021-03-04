#!/usr/bin/env bash

set -e

echo "Creating domain specific configurations"
for DOMAIN in /etc/nginx/app/*; do
    if [ -d "${DOMAIN}" ]; then
        DOMAIN=$(basename "${DOMAIN}")
        export DOMAIN

        if [[ "${DOMAIN}" == *-443 ]] || [[ "${DOMAIN}" == *-80 ]] || [[ "${DOMAIN}" == "scope-http" ]]; then
            echo "Skipped folder ${DOMAIN}, does not look like a domain folder"
        else
            echo "Creating ${DOMAIN} domain configuration"
            envsubst < /etc/nginx/sites.d/template.conf.tpl > "/etc/nginx/sites.d/${DOMAIN}.conf"
        fi
    fi
done
