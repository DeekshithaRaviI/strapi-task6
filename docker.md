1. The problem Docker solves

Before Docker, applications were deployed manually and required developers to ensure correct:
OS configuration,Dependencies,Libraries,Runtime versions,This caused problems like It works on my machine issue,difficulty in moving apps from one machine to another slow manual deployments heavy virtual machines consuming more RAM & CPU
Docker solves this by packaging applications into lightweight containers, which contain:
App code,Dependencies,Runtime,Environment variables So the same container runs the same way in any machine.

2. Virtual Machines vs Docker
Virtual Machines (VMs) run on a hypervisor and include a full operating system for every VM. Because of this, they are heavy, take more storage, use more RAM/CPU, and take minutes to start.

Docker containers, on the other hand, share the host OS kernel and only package the application with its dependencies. This makes containers lightweight, fast, and easy to move between machines. Containers start in seconds and use very little resources.

Summary:
VMs are good when you need a full OS and strong isolation.
Docker is better for fast, portable, and efficient application deployment.

3. Docker Architecture — What Gets Installed?

When Docker is installed, these components are installed:

1. Docker Engine
This is the main component that runs Docker.

2. Docker Daemon (dockerd)
Background process
Manages containers, images, networks, volumes

3. Docker CLI
Commands like:
docker run
docker build
docker pull
docker ps

4. Docker Images
Pre-built templates for your containers.

5. Docker Hub (Registry)
Where images are stored and pulled from.

4. Dockerfile Deep Dive — Explain Each Line

Example Dockerfile:

FROM node:18-alpine-> Base image with Node.js
WORKDIR /app       ->Set working directory inside container
COPY package*.json ./->Copy dependency files
RUN npm install      ->Install dependencies
COPY . .              -> Copy all source code
EXPOSE 3000            ->Expose port 3000
CMD ["npm", "start"]     ->Command to run when container starts

5. Key Docker Commands
Images
docker pull image-name
docker images
docker rmi image-id

Containers
docker run image-name
docker ps
docker ps -a
docker stop container-id
docker rm container-id

Build
docker build -t my-app .

Logs
docker logs container-id

Exec into container
docker exec -it container-id bash

6. Docker Networking

Docker creates networks for containers to talk.

Types:
bridge -> default network
host -> uses host machine network
none -> no networking
custom network -> user-defined

Useful commands:
docker network ls
docker network create mynetwork
docker network inspect mynetwork

7. Volumes & Persistence

Containers are temporary. If container stops, data is lost.Volumes store data permanently.

Types of volumes:
Named volumes
Bind mounts

Commands:
docker volume ls
docker volume create myvolume
docker run -v myvolume:/data image-name


Used for:
Database data

Logs
Any persistent storage

8. Docker Compose

Used to run multiple containers using one YAML file.

Example docker-compose.yml:

version: '3'
services:
  web:
    build: .
    ports:
      - "3000:3000"
    volumes:
      - .:/app
    depends_on:
      - db

  db:
    image: mysql:8
    environment:
      MYSQL_ROOT_PASSWORD: root


Commands:

docker compose up -d
docker compose down
