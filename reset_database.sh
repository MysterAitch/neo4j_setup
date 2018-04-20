set -x # Activate debugging


    if [ "$#" -ne 1 ]; then
        echo "Usage: $0 DIRECTORY";
        exit 1;
    fi

    dirPath=$1

    if ! [ -d "${dirPath}" ]; then
        echo "${dirPath} is not a directory";
        exit 1;
    fi


    databases_path="/var/lib/neo4j/data/databases/"

    sudo rm -r ${databases_path}graph.db
    sudo cp -r ${dirPath} ${databases_path}
    sudo chown -R neo4j:adm ${databases_path}graph.db/
    sudo systemctl restart neo4j.service


set +x # Rectivate debugging
