#!/bin/bash
<<<<<<< HEAD
<<<<<<< HEAD
docker build -t hamsder_devel .
docker run -it hamsder_devel 
=======
=======
>>>>>>> ab264530bd9c229b125d362e9a82a6317f2b6262

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

<<<<<<< HEAD
>>>>>>> ab26453 (refactored server skeleton and added shared directory to development environment)
=======
>>>>>>> ab264530bd9c229b125d362e9a82a6317f2b6262
