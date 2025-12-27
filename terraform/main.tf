terraform {
  required_version = ">= 1.0"
  
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

# ------------------------------- 
# Security Group (CREATE NEW)
# ------------------------------- 
resource "aws_security_group" "strapi_sg" {
  name        = "deek-strapi-sg"
  description = "Security group for Strapi server"

  # SSH access
  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Strapi access
  ingress {
    description = "Strapi"
    from_port   = 1337
    to_port     = 1337
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Outbound internet access
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "deek-strapi-sg"
    Owner   = "Deek"
    Project = "Strapi-Task6"
  }
}

# ------------------------------- 
# IAM Role for EC2 (CREATE NEW)
# ------------------------------- 
resource "aws_iam_role" "ec2_ecr_role" {
  name = "deek-ec2-ecr-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      }
    ]
  })

  tags = {
    Name    = "deek-ec2-ecr-role"
    Owner   = "Deek"
    Project = "Strapi-Task6"
  }
}

# Attach ECR read-only policy
resource "aws_iam_role_policy_attachment" "ecr_read" {
  role       = aws_iam_role.ec2_ecr_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
}

# Create instance profile
resource "aws_iam_instance_profile" "ec2_profile" {
  name = "deek-ec2-ecr-instance-profile"
  role = aws_iam_role.ec2_ecr_role.name

  tags = {
    Name    = "deek-ec2-ecr-instance-profile"
    Owner   = "Deek"
    Project = "Strapi-Task6"
  }
}

# ------------------------------- 
# EC2 Instance
# ------------------------------- 
resource "aws_instance" "strapi_instance" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.key_name
  
  vpc_security_group_ids = [
    aws_security_group.strapi_sg.id
  ]
  
  iam_instance_profile = aws_iam_instance_profile.ec2_profile.name
  
  user_data = templatefile("${path.module}/user-data.sh", {
    docker_image = var.docker_image
    aws_region   = var.aws_region
  })
  
  tags = {
    Name        = "deek-strapi-server"
    Owner       = "Deek"
    Project     = "Strapi-Task6"
    Environment = "Production"
  }
  
  root_block_device {
    volume_size = 20
    volume_type = "gp3"
  }
}