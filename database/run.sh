 #!/bin/bash

if [ -z "$1" -o -z "$2" ] ; then
	echo -e "Missing arguments!\nusage:\n\t run.sh [username] [password]\nwhere [username] and [password] are credentials used to access the DB."
	exit 1
fi

docker run bestiarium_db -dp 5432:5432 -e "POSTGRES_DB=bestiarium" -e "POSTGRES_USER=$1" -e "POSTGRES_PASSWORD=$2" bestiarium_db

