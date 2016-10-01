#!/bin/sh

# project docker path
SCRIPT_DIR=`dirname $0`

case $1 in
    --help|help)
        echo "Usage: ./docker.sh [up|down] \n\n \
up      - Starts the services in the background \n \
down    - Stops the services, removes the containers \n \
ssh     - SSH Connect \n"
        ;;
    start|up)
        # Starts the docker machine and backgroud services
        (docker-compose up -d)
        ;;
    down|destroy)
        # Stops the services, removes the containers
        (docker-compose down)
        ;;
    ssh)
        # Connect to SSH
        (docker exec -it ubuntu14node_server_1 bash)
        ;;
    *)
        echo "unknown command"
        echo "Usage:"
        echo "./docker.sh [up|down]"
        ;;
esac
