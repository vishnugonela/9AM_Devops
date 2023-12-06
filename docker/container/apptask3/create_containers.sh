#!/bin/bash

# Define the base container name
CONTAINER_BASE_NAME="my_container"

# Loop to create 10 containers
for ((i=1; i<=10; i++)); do
    # Define the container name with a number suffix
    CONTAINER_NAME="${CONTAINER_BASE_NAME}_${i}"

    # Check if the container exists
    if docker ps -a --format '{{.Names}}' | grep -q "$CONTAINER_NAME"; then
        # Container exists, stop and remove it
        docker stop "$CONTAINER_NAME" && docker rm "$CONTAINER_NAME"
        echo "Container $CONTAINER_NAME existed and has been removed."
    fi

    # Create a new container
    docker run -d --name "$CONTAINER_NAME" nginx
    echo "Container $CONTAINER_NAME created."
done
