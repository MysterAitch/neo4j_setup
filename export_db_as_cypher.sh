set -x # Activate debugging

# Set path to tmp exported file
timestamp=$(date +%Y%m%d_%H%M%S%3N)
filename=cypher-exports-"$timestamp".cypher
filepath=/tmp/"$filename"
echo "$filepath"

# Execute command to export cypher
/usr/bin/neo4j-shell -c "CALL apoc.export.cypher.all(\"$filepath\",{});"


# Copy exported cypher file
cp "$filepath" ~/cypher-exports/"$filename"


set +x # Deactivate debugging

