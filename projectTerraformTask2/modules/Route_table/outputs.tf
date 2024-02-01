output "route_table_id" {
  description = "ID of the created route table"
  value       = aws_route_table.public_route_table.id
}

