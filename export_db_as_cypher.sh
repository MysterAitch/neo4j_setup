/usr/bin/neo4j-shell -c "CALL apoc.export.cypher.all((\"/tmp/cyhper-exports-\" + timestamp() + \".cypher\"),{});"
