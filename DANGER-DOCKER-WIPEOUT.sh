#/bin/bash

# Remove all stopped containers.
docker container prune

# Remove all containers.
docker rm $(docker ps -aq)

# Delete all images.
docker rmi $(docker images -q) --force

# Remove stopped containers and images, including unused and dangling images.
docker system prune -a

# Delete all volumes.
docker volume rm $(docker volume ls -q)
