set -x # Activate debugging

    # Add Neo4j Repository
    wget -O - https://debian.neo4j.org/neotechnology.gpg.key | sudo apt-key add -
    echo 'deb https://debian.neo4j.org/repo stable/' | sudo tee /etc/apt/sources.list.d/neo4j.list
    sudo apt-get update

    # Install Neo4j
    sudo apt-get install -y neo4j=1:3.4.5

set +x # Rectivate debugging
