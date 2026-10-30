# Automated Application Deployment Pipeline

This project demonstrates how to build, package, and deploy an application automatically using Docker, Terraform, and AWS.

## Overview
The goal is to reduce manual deployment effort and make releases repeatable and safer.

## Tech stack
- GitHub Actions
- Docker
- Terraform
- AWS ECR
- AWS ECS Fargate
- Application Load Balancer
- CloudWatch

## Project flow
1. Push code to GitHub
2. GitHub Actions runs the pipeline
3. Docker image is built
4. Image is pushed to Amazon ECR
5. Terraform provisions or updates AWS resources
6. ECS deploys the updated container
7. Health checks confirm the app is running
8. Deployment is monitored and alerts can be sent

## Folder structure
- `app/` contains the sample application and Dockerfile
- `terraform/` contains Terraform configuration for AWS resources
- `scripts/` contains helper scripts
- `.github/workflows/` contains CI/CD pipeline

## Local run
```bash
docker build -t sample-app:latest ./app
docker run -p 8000:8000 sample-app:latest
```

## Health check
```bash
curl http://localhost:8000/health
```

## Notes
This is a starter project for learning DevOps automation and deployment workflows.
