#!/bin/bash
echo "######### CREATING DATABASES ##########"

# Perform all actions as user 'postgres'
export PGUSER=postgres

# Create the Seequestor user and database
psql <<EOSQL
    \c template1
    create extension hstore;

    CREATE DATABASE pg_extensions_test;
    CREATE DATABASE pg_extensions;
    CREATE ROLE pg_extensions WITH LOGIN PASSWORD 'pg_extensions';
    GRANT ALL PRIVILEGES ON DATABASE pg_extensions_test TO pg_extensions;
    GRANT ALL PRIVILEGES ON DATABASE pg_extensions TO pg_extensions;
EOSQL

echo ""
echo "######### DATABASES CREATED ##########"
