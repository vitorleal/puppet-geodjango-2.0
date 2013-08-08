#!/usr/bin/env bash
createdb template_postgis
echo "CREATE EXTENSION postgis;" | psql template_postgis
