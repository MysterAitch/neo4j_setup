# Set path to tmp exported file
filepath="/tmp/cyhper-exports-" + timestamp() + ".cypher"
/usr/bin/neo4j-shell -c "CALL apoc.export.cypher.all(($filepath),{});"
