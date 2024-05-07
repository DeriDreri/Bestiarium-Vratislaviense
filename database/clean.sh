#!/bin/bash

docker image rm bestiarium_db

docker volume rm bestiarium_db_volume

docker volume create bestiarium_db_volume
