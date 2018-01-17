set -x # Activate debugging


# Set path to tmp exported file
timestamp=$(date +%Y%m%d_%H%M%S%3N)
filepath=/tmp/cyhper-exports-"$timestamp".cypher
echo "$filepath"

/usr/bin/neo4j-shell -c "CALL apoc.export.cypher.all(\"$filepath\",{});"


set +x # Deactivate debugging

