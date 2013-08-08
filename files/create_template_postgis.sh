#!/usr/bin/env bash
createdb -U postgres template_postgis
sudo su postgres && echo "CREATE EXTENSION postgis;" | psql template_postgis
