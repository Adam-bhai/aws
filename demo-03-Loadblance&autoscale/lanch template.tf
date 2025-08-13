resource "aws_launch_template" "lg_launch_template" {
  name_prefix   = "lg-lt-"
  image_id      = "ami-0150ccaf51ab55a51"   # Use a valid AMI
  instance_type = "t2.micro"
  user_data = base64encode(file("script.sh"))

  network_interfaces {
    associate_public_ip_address = true 
 #public ip yen associate true nu kodukurom 
    security_groups             = [aws_security_group.lg-sg.id]
  }

  lifecycle {
    create_before_destroy = true
  }
}
