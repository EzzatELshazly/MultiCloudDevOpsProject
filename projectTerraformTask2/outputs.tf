output "vpc_id" {
  description = "ID of the created VPC"
  value       = module.vpc.vpc_id
}

output "vpc_cidr_block" {
  description = "CIDR block of the created VPC"
  value       = module.vpc.vpc_cidr_block
}

output "subnet_id" {
  description = "ID of the created Subnet"
  value       = module.subnet.subnet_id
}

output "security_group_id" {
  description = "ID of the created Security Group"
  value       = module.security_group.security_group_id
}

output "internet_gateway_id" {
  description = "ID of the created Internet Gateway"
  value       = module.internet_gateway.internet_gateway_id
}

output "route_table_id" {
  description = "ID of the created Route Table"
  value       = module.Route_table.route_table_id
}
