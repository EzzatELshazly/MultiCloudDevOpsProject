resource "aws_internet_gateway" "mainIGW" {
  vpc_id = var.vpc_id

  tags = {
    Name = var.igwName
  }
}

