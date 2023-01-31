resource "aws_instance" "omar-public" {
  ami                         = var.ec2-ami
  instance_type               = var.instance_type
  associate_public_ip_address = "true"
  vpc_security_group_ids      = [aws_security_group.omar-security.id]
  user_data                   = <<EOF
#!/bin/bash
sudo apt-get update
sudo apt-get install -y apache2
sudo systemctl start apache2
sudo systemctl enable apache2
EOF
  subnet_id                   = aws_subnet.subnets[0].id
  tags = {
    Name = "omar-public-ec2"
  }
}

resource "aws_instance" "omar-private" {
  ami                         = var.ec2-ami
  instance_type               = var.instance_type
  associate_public_ip_address = "true"
  vpc_security_group_ids      = [aws_security_group.omar-security.id]
  user_data                   = <<EOF
#!/bin/bash
sudo apt-get update
sudo apt-get install -y apache2
sudo systemctl start apache2
sudo systemctl enable apache2
EOF
  subnet_id                   = aws_subnet.subnets[1].id
  tags = {
    Name = "omar-private-ec2"
  }
}