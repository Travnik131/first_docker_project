FROM postgres:13.4-alpine

RUN mkdir -p /home/postgres && chown -R postgres:postgres /home/postgres

WORKDIR /home/postgres

COPY construcorDumpnull_constructor-stage-202012151532.sql ./
COPY initialize.sh /docker-entrypoint-initdb.d/initialize.sh

EXPOSE 5432
