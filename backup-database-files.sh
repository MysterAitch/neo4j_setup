# Stop the service to enable changes
#sudo service neo4j stop

# Define some variables to be used 
# (notably/primarily so that the timestamp remains consistent between uses within this script)
timestamp=$(date +%Y%m%d_%H%M%S%3N)
foldername=neo4j-db-export-"$timestamp"
filename="$foldername".cypher

# Make directory to be used for this export
mkdir ~/"$foldername"

# Copy (recursively) the neo4j data dir to the newly created folder
cp -r /var/lib/neo4j/data/databases/graph.db ~/"$foldername"

# Restart the service
#sudo service neo4j start
