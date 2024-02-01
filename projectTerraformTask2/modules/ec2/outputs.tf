output "ec2_instance_id" {
  description = "ID of the created EC2 instance"
  value       = aws_instance.main.id
}


