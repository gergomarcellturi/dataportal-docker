#!/bin/bash

psql -v ON_ERROR_STOP=1 --username postgres -d dataportal_db  <<-EOSQL
     create extension if not exists "pg_trgm";
     create extension if not exists "uuid-ossp";
EOSQL

psql -v ON_ERROR_STOP=1 --username postgres -d datastorage_db  <<-EOSQL
     create extension if not exists "pg_trgm";
     create extension if not exists "uuid-ossp";
EOSQL
