#/bin/bash

# Remove all stopped containers.
docker container prune --force

# Remove all containers.
docker rm $(docker ps -aq) --force

# Delete all images.
docker rmi $(docker images -q) --force

# Remove stopped containers and images, including unused and dangling images.
docker system prune -a --force

# Delete all volumes.
docker volume rm $(docker volume ls -q) --force
