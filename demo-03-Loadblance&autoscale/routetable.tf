resource "aws_route_table" "lg-rt" {
  vpc_id = aws_vpc.lg.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.lg-internetgw.id
  }

  tags = {
    Name = "lg-clint"
  }
}
