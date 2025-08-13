resource "aws_lb_listener" "http" {
  load_balancer_arn = aws_lb.lg_lb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.lg_tg.arn
  }
}
