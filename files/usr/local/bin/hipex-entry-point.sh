#!/usr/bin/env bash

set -e

/usr/local/bin/hipex-entry-point/envreplace.sh
/usr/local/bin/hipex-entry-point/load-dynamic-realip.sh
/usr/local/bin/hipex-entry-point/domain-config.sh

exec "$@"
