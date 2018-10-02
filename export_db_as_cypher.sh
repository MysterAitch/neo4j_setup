set -x # Activate debugging

# Set path to tmp exported file
timestamp=$(date +%Y%m%d_%H%M%S%3N)
filename=cypher-exports-"$timestamp".cypher
filepath=/tmp/"$filename"
exportdir=~/cypher-exports/
exportpath="$exportdir$filename"
echo "temp file: `$filepath`"
echo "export path: `$exportpath`"

# Execute command to export cypher
/usr/bin/neo4j-shell -c "CALL apoc.export.cypher.all(\"$filepath\",{});"


# Copy exported cypher file
mkdir -p "$exportdir"
#mkdir "$exportdir"
cp "$filepath" "$exportpath"


set +x # Deactivate debugging
