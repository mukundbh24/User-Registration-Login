#!/bin/bash

# Define variables
IMAGE_NAME="user-registration-app"
CONTAINER_NAME="user-registration-container"

# Build Docker image
docker build -t $IMAGE_NAME .

# Run Docker container
docker run -d -p 5000:5000 --name $CONTAINER_NAME $IMAGE_NAME

# Optionally, open a web browser to view the application
# Comment out the next two lines if you don't want this behavior
if command -v xdg-open &> /dev/null; then
    xdg-open "http://localhost:5000"
elif command -v open &> /dev/null; then
    open "http://localhost:5000"
fi

