#!/bin/bash

IMAGE_NAME=hamsder_devel
DOCKERFILE_DIR=.
echo "Initializing development environment..."
# Check if the Docker image exists
if [ "$(docker image ls -q $IMAGE_NAME)" == "" ]; then
  echo "Building Docker image..."
#   docker build --build-arg GIT_NAME=$1 \
#   --build-arg GIT_EMAIL=$2 \
#   -t $IMAGE_NAME $DOCKERFILE_DIR
  docker build -t $IMAGE_NAME $DOCKERFILE_DIR
fi

echo "Starting development environment..."
# Run the Docker image
docker run -v ~/lahacks/hamsder_backend:/usr/src/projects/hamsder_backend -it $IMAGE_NAME

