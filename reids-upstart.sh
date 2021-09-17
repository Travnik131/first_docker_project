#!/bin/bash
set -e
set -x

echo "******redis upstart******"
sed -i "s/requirepass PASSWORD/requirepass ${REDIS_PASSWORD}/g" /usr/local/etc/redis/redis.conf
redis-server /usr/local/etc/redis/redis.conf
