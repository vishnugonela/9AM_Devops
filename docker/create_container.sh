#!/bin/bash

# Create 10 containers using nginx image

for i in {1..10}
do
  name="container$i"
  echo "Processing $name..."

  # Check if container exists
  if [ "$(docker ps -a --format '{{.Names}}' | grep -w $name)" ]; then
    echo "$name already exists. Deleting..."
    docker rm -f $name
  fi

  # Create new container
  echo "Creating $name..."
  docker run -d --name $name nginx

  echo "$name created successfully!"
