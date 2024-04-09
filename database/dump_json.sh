#!/bin/bash

# set -x

USERNAME=${1:-0}
PASSWORD=${2:-0}

URLI="postgresql://${USERNAME}:${PASSWORD}@0.0.0.0:20960/bestiarium"
FLAGS="-t -A"

# Step 1 -> Get tables names 
QUERY_TABLES_NAMES="SELECT table_name FROM information_schema.tables WHERE table_schema='public'"
TABLES_NAMES=$(psql ${URLI} ${FLAGS} -c "${QUERY_TABLES_NAMES}")

# Step 2 -> Temporary directory for json files
mkdir temporary_dir

# Step 3 -> Dump every table to a JSON file 
for TABLE in ${TABLES_NAMES}; do
  QUERY_JSON_DUMP="select json_agg(t) from (select * from ${TABLE}) t"
  psql ${URLI} ${FLAGS} -c "${QUERY_JSON_DUMP}" > "temporary_dir/${TABLE}.json"
done

# Step 4 -> Zip all files into archive
DATE=$(date +%Y-%m-%d)
zip -q -r "bestiarum_${DATE}.zip" temporary_dir/*

rm -r temporary_dir
