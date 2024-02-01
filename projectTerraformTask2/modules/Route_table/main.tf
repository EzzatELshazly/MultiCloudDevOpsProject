resource "aws_route_table" "public_route_table" {
  vpc_id = var.vpc_id

  route {
    cidr_block = "0.0.0.0/0"  
    gateway_id = var.internet_gateway_id
  }

  tags = {
    Name = "public-route-table"
  }
}
resource "aws_route_table_association" "subnet_association" {
  subnet_id      = var.subnet_id
  route_table_id = var.route_table_id
}




