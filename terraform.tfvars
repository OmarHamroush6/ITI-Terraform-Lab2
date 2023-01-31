ec2-ami = "ami-0ab0629dba5ae551d"

instance_type = "t2.micro"

def-region = "us-east-2"

vpc-cidr = "10.0.0.0/16"

subnets = ["public", "private"]

subnets-cidr = ["10.0.0.0/24", "10.0.1.0/24"]

web-traffic = "0.0.0.0/0"

profile = "lab1"