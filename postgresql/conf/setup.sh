#!/bin/bash
echo "######### CREATING DATABASES ##########"

# Perform all actions as user 'postgres'
export PGUSER=postgres

# Create the Seequestor user and database
psql <<EOSQL
    CREATE DATABASE mydb;
    CREATE ROLE myuser WITH LOGIN PASSWORD 'mypass';
    GRANT ALL PRIVILEGES ON DATABASE mydb TO myuser;
EOSQL

echo ""
echo "######### DATABASES CREATED ##########"
