#!/bin/bash

# Build the Docker image using the Dockerfile
DOCKER_BUILDKIT=1 docker build
pip install -r requirements.txt

