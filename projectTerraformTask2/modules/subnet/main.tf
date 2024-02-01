
resource "aws_subnet" "main" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.cidr
  availability_zone       = "us-east-1a" 
  map_public_ip_on_launch = true

  tags = {
   Name = var.subnet_name
   }
}

