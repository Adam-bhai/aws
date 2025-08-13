resource "aws_autoscaling_group" "lg_asg" {
  name                      = "lg-asg"
  max_size                  = 2
  min_size                  = 2
  desired_capacity          = 2
  vpc_zone_identifier       = [aws_subnet.lgsub-1.id, aws_subnet.lgsub-2.id]
  target_group_arns         = [aws_lb_target_group.lg_tg.arn]
  #arn ?

  launch_template {
    id      = aws_launch_template.lg_launch_template.id
    version = "$Latest"
  }

  health_check_type         = "EC2"
  health_check_grace_period = 300

  tag {
    key                 = "Name"
    value               = "asg-instance"
    propagate_at_launch = true
  }
}
