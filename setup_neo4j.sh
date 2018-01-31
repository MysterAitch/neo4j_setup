set -x # Activate debugging

    # Overwrite config file with own (primarily to enable non-local access)
    sudo cp ./neo4j_files/neo4j.conf /etc/neo4j/neo4j.conf
    
    # Overwrite config file with own (primarily to set/override ulimit - permitted number of simultaneously open files)
    sudo cp ./neo4j_files/neo4j /etc/default/neo4j
    
    # Copy across the APOC plugin
    sudo cp ./neo4j_files/apoc-3.3.0.1-all.jar /var/lib/neo4j/plugins/apoc-3.3.0.1-all.jar

    # Restart the service to enable changes
    sudo service neo4j restart

set +x # Rectivate debugging
