#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="thanhta97/microproject:v1.0.0"
# Step 2
# Run the Docker Hub container with kubernetes
kubectl run microproject \
        --image=thanhta97/microproject:v1.0.0 --port=80 \
        --labels app=microproject

# Step 3:
# List kubernetes pods
kubectl get pod
# Step 4:
# Forward the container port to a host
kubectl port-forward microproject 8000:80
