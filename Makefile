# === Docker Compose Makefile ===


# Build image with cache
build:
	docker-compose build

# Build image without cache
build-nc:
	docker-compose build --no-cache

# Start all services with build (foreground)
run:
	docker-compose up

# Start all services with build (background)
rund:
	docker-compose up -d

# Stop all services
stop:
	docker-compose down

# Restart all services
restart:
	docker-compose down
	docker-compose up -d

# Show running containers
ps:
	docker-compose ps -a

#
