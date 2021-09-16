FROM redis:6.0-alpine

COPY redis.conf /usr/local/etc/redis/redis.conf
RUN chown -R redis:redis /usr/local/etc/redis


CMD [ "redis-server", "/usr/local/etc/redis/redis.conf" ]

EXPOSE 6379
