#!/bin/bash
set -e
set -x

echo "******PostgreSQL initialisation******"
pg_restore -C -d userdb /home/postgres/construcorDumpnull_constructor-stage-202012151532.sql
