#!/bin/sh

# project docker path
SCRIPT_DIR=`dirname $0`

case $1 in
    --help|help)
        echo "Usage: ./docker.sh [up|down] \n\n \
ps      - List containers \n \
up      - Starts the services in the background \n \
down    - Stops the services, removes the containers \n \
db      - Open mysql \n \
ssh     - SSH Connect \n \
build   - Docker compose build \n"
        ;;
    ps)
            # Starts the docker machine and backgroud services
        (docker-compose ps)
        ;;
    up|start)
        # Starts the docker machine and backgroud services
        (docker-compose up -d)
        ;;
    down|destroy)
        # Stops the services, removes the containers
        (docker-compose down)
        ;;
    db)
        # Open mysql
        # (mysql -udocker -pdocker -Ddocker -h 127.0.0.1)
        (docker-compose exec mysql /bin/bash -c 'mysql -udocker -Ddocker -pdocker')
        ;;
    ssh)
        # Connect to SSH
        (docker exec -it ubuntu14node_server_1 bash)
        ;;
    build)
        # Build image in Dockerfile
        (docker-compose build)
        ;;
    *)
        echo "unknown command"
        echo "Usage:"
        echo "./docker.sh [ps|up|down|db|ssh|build]"
        ;;
esac
