
output "ec2-public-ip" {
  value = aws_instance.omar-public.public_ip
}
output "ec2-private-ip" {
  value = aws_instance.omar-private.private_ip
}