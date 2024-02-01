variable "vpc_id" {}

variable "subnet_id" {}
variable "security_group_name" {
  type        = string
  description = "Name of the security group"
  default     = "ivolve-security-group"
}

