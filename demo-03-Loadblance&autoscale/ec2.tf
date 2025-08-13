resource "aws_instance" "web" {
  ami                    = "ami-0150ccaf51ab55a51"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.lgsub-1.id
  vpc_security_group_ids = [aws_security_group.lg-sg.id]
  associate_public_ip_address = "true"
  user_data = base64encode(file("script.sh"))
  

  tags = {
    Name = "web-server"
  }
}

output "my_web1_public_ip" {
  value = aws_instance.web.public_ip
}
output "my_web1_private_ip" {
  value = aws_instance.web.private_ip
  
}
output "my_dp1_private_ip" {
  value = aws_instance.web.private_ip
  
}