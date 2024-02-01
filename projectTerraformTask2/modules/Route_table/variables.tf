variable "vpc_id" {
  description = "ID of the VPC associated with the route table"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs associated with the route table"
  type        = list(string)
}
variable "internet_gateway_id" {
  description = "IGW ID"

}
variable "subnet_id" {
  description = "ID of the subnet"
}
variable "route_table_id" {
  description = "ID of the RT"
}


