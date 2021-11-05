
resource "aws_vpc" "grupo1-vpc-tf-ecs" {
  cidr_block       = "10.10.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "Practico ECS"
  }
}

resource "aws_subnet" "grupo1-subnet1" {
  vpc_id     = aws_vpc.grupo1-vpc-tf-ecs.id
  cidr_block = "10.10.10.0/24"
  availability_zone = var.aws_az1
  tags = {
    Name = "Subnet 1"
  }
}

resource "aws_subnet" "grupo2-subnet2" {
  vpc_id     = aws_vpc.grupo1-vpc-tf-ecs.id
  cidr_block = "10.10.20.0/24"
  availability_zone = var.aws_az2
  tags = {
    Name = "Subnet 2"
  }
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.grupo1-vpc-tf-ecs.id
  tags = {
    Name = "GW1"
  }
}

#Security Group
resource "aws_security_group" "grupo1-sg-practico-ecs-80" {
  name        = "practicoecs80"
  description = "sg-practico-ecs-80"
  vpc_id      = aws_vpc.grupo1-vpc-tf-ecs.id
  tags = {
    Name = "SC ECS"
  }
  ingress {
    description = "Allow Port 80"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    description = "Allow all ip and ports outboun"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}