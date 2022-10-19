# VPC Fetch
data "aws_vpc" "SquareOps_vpc" {
  filter {
    name   = "tag:Name"
    values = [var.vpc]
  }
}

# Public Subnet Fetch
data "aws_subnet" "public_subnet_1" {
  filter {
    name   = "tag:Name"
    values = [var.public_subnet_1]
  }
}
data "aws_subnet" "public_subnet_2" {
  filter {
    name   = "tag:Name"
    values = [var.public_subnet_2]
  }
}

# Private Subnet Fetch
data "aws_subnet" "private_subnet_1" {
  filter {
    name   = "tag:Name"
    values = [var.private_subnet_1]
  }
}
data "aws_subnet" "private_subnet_2" {
  filter {
    name   = "tag:Name"
    values = [var.private_subnet_2]
  }
}

# ALB Security Group Fetch
data "aws_security_group" "alb_sg" {
  filter {
    name   = "tag:Name"
    values = [var.alb_security_group]
  }
}