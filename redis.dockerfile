FROM redis:6.2.5

COPY redis.conf /usr/local/etc/redis/redis.conf
COPY redis-upstart.sh /usr/local/etc/redis/redis-upstart.sh
RUN chown -R redis:redis /usr/local/etc/redis/
CMD [ "/usr/local/etc/redis/reids-upstart.sh" ]

EXPOSE 6379
