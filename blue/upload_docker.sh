#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=capstone_image_blue

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username prernaarora28
docker tag capstone_image_blue prernaarora28/capstone_image_blue
# Step 3:
# Push image to a docker repository
docker push prernaarora28/capstone_image_blue
