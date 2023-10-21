#!/bin/bash

# Build Docker image
docker build -t flask-registration-app .

# Run Docker container in detached mode, mapping port 5000
docker run -d -p 5000:5000 --name flask-app flask-registration-app

# Check if the container is running
if [ "$(docker ps -q -f name=flask-app)" ]; then
    echo "Flask application is running at http://localhost:5000"
else
    echo "Failed to start Flask application."
fi

