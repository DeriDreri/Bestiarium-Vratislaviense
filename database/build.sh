#!/bin/bash

docker image rm bestiarium_db

docker build -t bestiarium_db .

echo "Created a docker image bestiarium_db based on a Dockerfile in this repository."
