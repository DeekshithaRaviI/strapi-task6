variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "ami_id" {
  description = "AMI ID for Ubuntu 22.04"
  type        = string
  default     = "ami-0e2c8caa4b6378d8c" # Ubuntu 22.04 LTS in us-east-1
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.medium"
}

variable "key_name" {
  description = "SSH key pair name"
  type        = string
  default     = "deek-key" # Update this to your actual key name
}

variable "docker_image" {
  description = "Docker image from ECR"
  type        = string
}

variable "project_prefix" {
  description = "Prefix for all resources"
  type        = string
  default     = "deek"
}