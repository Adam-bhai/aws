resource "aws_route_table_association" "lg-RT-AS1" {
  subnet_id      = aws_subnet.lgsub-1.id
  route_table_id = aws_route_table.lg-rt.id
}
resource "aws_route_table_association" "lg-RT-AS2" {
  subnet_id      = aws_subnet.lgsub-2.id
  route_table_id = aws_route_table.lg-rt.id
}