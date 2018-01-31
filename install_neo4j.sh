set -x # Activate debugging

    # Update System
    sudo apt-get update
    sudo apt-get -y upgrade
    

    # Install Neo4j
    wget -O - https://debian.neo4j.org/neotechnology.gpg.key | sudo apt-key add -
    echo 'deb https://debian.neo4j.org/repo stable/' | sudo tee /etc/apt/sources.list.d/neo4j.list
    sudo apt-get update

    ## Until APOC is available for v3.2, stick with v3.1
    sudo apt-get install -y neo4j=3.3.2

set +x # Rectivate debugging
