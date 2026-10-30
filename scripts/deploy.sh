#!/bin/bash
set -e

echo "Starting deployment..."

docker build -t sample-app:latest ./app

docker run -d -p 8000:8000 --name sample-app sample-app:latest

./scripts/health_check.sh

echo "Deployment successful"
