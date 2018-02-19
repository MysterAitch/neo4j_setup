set -x # Activate debugging

    # Update System
    sudo apt-get update
    sudo apt-get -y upgrade
    

    # Add Neo4j Repository
    wget -O - https://debian.neo4j.org/neotechnology.gpg.key | sudo apt-key add -
    echo 'deb https://debian.neo4j.org/repo stable/' | sudo tee /etc/apt/sources.list.d/neo4j.list
    sudo apt-get update

    # Install Neo4j
    sudo apt-get install -y neo4j=3.3.2

set +x # Rectivate debugging
