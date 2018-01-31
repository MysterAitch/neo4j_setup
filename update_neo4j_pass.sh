set -x # Activate debugging

    ## Note use of http (due to self-signed certs causing https connections to fail)
    curl -H "Content-Type: application/json" -X POST -d '{"password":"neo4j-pass"}' -u neo4j:neo4j http://localhost:7474/user/neo4j/password

set +x # Rectivate debugging
