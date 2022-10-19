# Application Load Balancer
resource "aws_lb" "application-load-balancer" {
  name               = "aadesh-alb-tf"
  internal           = false
  load_balancer_type = "application"
  ip_address_type    = "ipv4"
  #   vpc_id             = data.aws_vpc.SquareOps_vpc.id
  subnets         = [data.aws_subnet.public_subnet_1.id, data.aws_subnet.public_subnet_2.id]
  security_groups = [data.aws_security_group.alb_sg.id]

  tags = {
    Owner = "Aadesh"
  }
}