#!/bin/bash
set -e

exec /usr/local/bin/supervisord -c /etc/supervisord.conf

exec "$@"