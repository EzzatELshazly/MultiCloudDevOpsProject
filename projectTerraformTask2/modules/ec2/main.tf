variable "subnet_id" {}

variable "security_groups" {
  type = list(string)
}

resource "aws_instance" "main" {
  ami             = var.ami
  instance_type   = var.instance_type
  subnet_id       = var.subnet_id
  security_groups = var.security_groups
  key_name        = var.key_name
  tags = {
    Name = var.instance_name
  }	
}
