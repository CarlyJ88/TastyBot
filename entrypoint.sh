#!/bin/bash
set -e

rm -f /mymealapp/tmp/pids/server.pid

exec "$@"