FROM certbot/certbot:v1.19.0

WORKDIR ~/

COPY certbot-etc /etc/letsencrypt
# COPY certbot-var /var/lib/letsencrypt
