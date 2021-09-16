FROM postgres:13.4-alpine

RUN mkdir -p /home/postgres && chown -R postgres:postgres /home/postgres

WORKDIR /home/postgres

ENV POSTGRES_USER postgres
ENV POSTGRES_PASSWORD password
ENV POSTGRES_DB userdb

COPY construcorDumpnull_constructor-stage-202012151532.sql ./
COPY initialize.sh /docker-entrypoint-initdb.d/initialize.sh

EXPOSE 5432
