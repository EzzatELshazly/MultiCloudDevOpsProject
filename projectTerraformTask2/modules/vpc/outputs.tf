output "vpc_id" {
  description = "ID of the created VPC"
  value       = aws_vpc.main.id
}

output "vpc_cidr_block" {
  description = "CIDR block of the created VPC"
  value       = aws_vpc.main.cidr_block
}
# output "internet_gateway_id" {
#  description = "ID of the created Internet Gateway"
  # value       = aws_internet_gateway.mainIGW.id
# }

