resource "aws_lb_target_group" "lg_tg" {
  name        = "lg-tg"
  port        = 80
  protocol    = "HTTP"
  vpc_id      = aws_vpc.lg.id
  target_type = "instance"
}
