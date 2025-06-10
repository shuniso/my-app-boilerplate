# Project-wide
PROJECT_NAME := template-project

# App (Next.js)
APP_IMAGE := $(PROJECT_NAME)-app
APP_DIR := ./service/app

# Server (FastAPI + Strawberry)
SERVER_IMAGE := $(PROJECT_NAME)-server
SERVER_DIR := ./service/server

# Build images
docker-build-app:
	docker build -t $(APP_IMAGE) $(APP_DIR)

docker-build-server:
	docker build -t $(SERVER_IMAGE) $(SERVER_DIR)

# Run containers
docker-run-app:
	docker run -it --rm -p 3000:3000 $(APP_IMAGE)

docker-run-server:
	docker run -it --rm -p 8080:8080 $(SERVER_IMAGE)

# Clean (optional)
docker-clean:
	docker image rm -f $(APP_IMAGE) $(SERVER_IMAGE) || true