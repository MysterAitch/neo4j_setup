# Stop the service to enable changes
#sudo service neo4j stop

timestamp=$(date +%Y%m%d%H%M%S%3N)
foldername=neo4j-db-export-"$timestamp"
#filename=foldername

mkdir ~/"$foldername"


# Restart the service
#sudo service neo4j start
