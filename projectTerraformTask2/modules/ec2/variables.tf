variable "instance_type" {
  description = "Type of EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "ami" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-0a3c3a20c09d6f377"	
}

variable "instance_name" {
  description = "Name of the EC2 instance"
  type        = string
  default     = "IvolveEc2"
}
 
variable "key_name" {
  description = "Name of the Keypair"
  type        = string
  default     = "IvolveKey"
}


