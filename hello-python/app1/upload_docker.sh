#!/usr/bin/env bash
# This file tags and uploads an image to aws ecr

# Assumes that an image is built via `run_docker.sh`


# Step 1:  
# Retrieve an authentication token and authenticate your Docker client to your registry.
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 664606876022.dkr.ecr.us-east-1.amazonaws.com


# Step 2:
# Build your Docker image using the following command
docker build -t capstone_p5 .

# Step 3:
#tag your image so you can push the image to this repository
docker tag capstone_p5:latest 664606876022.dkr.ecr.us-east-1.amazonaws.com/capstone_p5:latest

#step 4:
#push the images to the repo
docker push 664606876022.dkr.ecr.us-east-1.amazonaws.com/capstone_p5:latest