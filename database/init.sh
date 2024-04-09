#!/bin/bash

USERNAME=${1:-admin}
PASSWORD=${2:-my-secret-password}
INIT_FILE=${3:-init.sql}
POSTGRES_IMAGE=postgres:16-alpine 
PG_PORT=20960 # Required for the hosted server

docker pull ${POSTGRES_IMAGE} 
docker run --name=postgres-bestiarium \
           --mount source=posrgres_data,target=/var/lib/postgreqsl/data \
           -p ${PG_PORT}:5432 \
           -e POSTGRES_DB=bestiarium \
           -e POSTGRES_USER=${USERNAME} \
           -e POSTGRES_PASSWORD=${PASSWORD} \
           -d ${POSTGRES_IMAGE}

sleep 5 # TODO Better way to detect if the port is opened

if [[ -f ${INIT_FILE} ]] ; then  # TODO There is better option for parsing init.sql file, but needs more research into how Docker and PostgreSQL works 
  psql -h 0.0.0.0 \
       -U ${USERNAME} \
       -p 20960 \
       -d bestiarium \
       -f ${INIT_FILE}
else 
  echo "No init file"
fi
