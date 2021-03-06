#!/bin/sh

rm -rf ./psql
pg_ctl initdb -D ./psql
pg_ctl start -D ./psql
psql -d postgres -f db_definitions.sql

# ここは毎回変更が必要
psql -d DATABASE_NAME -U USER_NAME -f table_definitions.sql

pg_ctl stop -D ./psql
