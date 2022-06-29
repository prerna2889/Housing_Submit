#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=blueimage

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username prernaarora28
docker tag blueimage prernaarora28/blueimage
# Step 3:
# Push image to a docker repository
docker push prernaarora28/blueimage