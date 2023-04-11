#!/bin/bash

# Wait for the Docker daemon to become available
until docker info >/dev/null 2>&1; do
  echo "Waiting for Docker to start..."
  sleep 1
done

# Run docker-compose.yml using the up -d option
docker-compose up -d
