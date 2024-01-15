#!/bin/bash

# Script to log in to a Docker container

# Check if the required arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <container_name_or_id> <command>"
    exit 1
fi

# Assign container name or ID and command
container_name_or_id=$1
command=$2

# Log in to the Docker container
docker exec -it "$container_name_or_id" $command
