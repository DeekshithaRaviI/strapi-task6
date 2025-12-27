output "instance_id" {
  description = "EC2 Instance ID"
  value       = aws_instance.strapi_instance.id
}

output "instance_public_ip" {
  description = "Public IP of EC2 instance"
  value       = aws_instance.strapi_instance.public_ip
}

output "instance_public_dns" {
  description = "Public DNS of EC2 instance"
  value       = aws_instance.strapi_instance.public_dns
}

output "strapi_admin_url" {
  description = "Strapi Admin URL"
  value       = "http://${aws_instance.strapi_instance.public_ip}:1337/admin"
}

output "ssh_command" {
  description = "SSH command to connect to instance"
  value       = "ssh -i ${var.key_name}.pem ubuntu@${aws_instance.strapi_instance.public_ip}"
}

# Fixed: Reference the existing security group (data source)
output "security_group_id" {
  description = "Security Group ID"
  value       = data.aws_security_group.existing_sg.id
}

# Fixed: Reference the existing IAM instance profile (data source)
output "iam_instance_profile_name" {
  description = "IAM Instance Profile Name"
  value       = data.aws_iam_instance_profile.existing_profile.name
}

output "resource_tags" {
  description = "Resource tags for identification"
  value = {
    Owner   = "Deek"
    Project = "Strapi-Task6"
  }
}