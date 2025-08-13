resource "aws_internet_gateway" "lg-internetgw" {
  vpc_id = aws_vpc.lg.id

  tags = {
    Name = "lg-clint"
  }
}