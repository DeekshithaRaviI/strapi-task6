#!/bin/bash
set -e

# Log everything
exec > >(tee /var/log/user-data.log)
exec 2>&1

echo "Starting user data script..."

# Update system
apt-get update
apt-get upgrade -y

# Install Docker
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh

# Start Docker service
systemctl start docker
systemctl enable docker

# Install AWS CLI
apt-get install -y unzip
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
./aws/install

# Login to ECR
aws ecr get-login-password --region ${aws_region} | docker login --username AWS --password-stdin $(echo ${docker_image} | cut -d'/' -f1)

# Pull and run Strapi container
echo "Pulling Docker image: ${docker_image}"
docker pull ${docker_image}

echo "Starting Strapi container..."
docker run -d \
  --name strapi \
  --restart unless-stopped \
  -p 1337:1337 \
  -e NODE_ENV=production \
  -e HOST=0.0.0.0 \
  -e PORT=1337 \
  ${docker_image}

echo "User data script completed!"