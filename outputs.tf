output "vpc_id" {
  description = "ID of the lab VPC"
  value       = aws_vpc.lab.id
}

output "public_subnet_id" {
  description = "ID of the public subnet"
  value       = aws_subnet.public.id
}

output "security_group_id" {
  description = "ID of the lab security group"
  value       = aws_security_group.lab.id
}

output "instance_id" {
  description = "ID of the lab EC2 instance"
  value       = aws_instance.lab.id
}

output "instance_public_ip" {
  description = "Public IPv4 address of the lab EC2 instance"
  value       = aws_instance.lab.public_ip
}