resource "aws_lb" "lg_lb" {
  name               = "lg-lb"
  internal           = false
  #internal yen false ?
  load_balancer_type = "application"
  subnets            = [aws_subnet.lgsub-1.id, aws_subnet.lgsub-2.id]
  security_groups    = [aws_security_group.lg-sg.id]
}
