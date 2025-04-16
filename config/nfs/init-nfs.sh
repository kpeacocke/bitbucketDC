#!/bin/sh
set -e

mkdir -p /mnt/bitbucket-shared
chown -R 2003:2003 /mnt/bitbucket-shared
chmod -R 755 /mnt/bitbucket-shared

exec /init "$@"