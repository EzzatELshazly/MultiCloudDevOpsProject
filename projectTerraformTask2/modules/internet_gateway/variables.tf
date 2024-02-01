variable "vpc_id" {
  description = "ID of the VPC to associate the Internet Gateway with"
  type        = string
}
variable "igwName" {
  description = "Name of the Internet Gateway "
  type        = string
  default     = "IvolveIgw"
}


