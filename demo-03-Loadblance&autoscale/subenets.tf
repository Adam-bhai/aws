resource "aws_subnet" "lgsub-1" {
  vpc_id     = aws_vpc.lg.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "lg-clint"
  }
}
resource "aws_subnet" "lgsub-2" {
  vpc_id     = aws_vpc.lg.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-east-1b"
  map_public_ip_on_launch = true

  tags = {
    Name = "lg-clint"
  }
}