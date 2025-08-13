resource "aws_vpc" "lg" {
  cidr_block = "10.0.0.0/16"


tags = {
  name = "lg  clint"
}
}