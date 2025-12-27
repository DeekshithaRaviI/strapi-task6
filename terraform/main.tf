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
# Existing Security Group
# -------------------------------
data "aws_security_group" "existing_sg" {
  id = "sg-0bb1451aa6444572b"
}

# -------------------------------
# Existing IAM Instance Profile
# -------------------------------
data "aws_iam_instance_profile" "existing_profile" {
  name = "deek-ec2-ecr-instance-profile"
}

# -------------------------------
# EC2 Instance ONLY
# -------------------------------
resource "aws_instance" "strapi_instance" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.key_name

  vpc_security_group_ids = [
    data.aws_security_group.existing_sg.id
  ]

  iam_instance_profile = data.aws_iam_instance_profile.existing_profile.name

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
