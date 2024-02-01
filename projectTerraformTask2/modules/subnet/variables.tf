variable "vpc_id" {}

variable "cidr" {}
variable "subnet_name" {
  type        = string
  description = "Name for the subnet"
  default     = "ivolve-subnet"
}

