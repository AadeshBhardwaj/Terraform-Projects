# Target Group
resource "aws_lb_target_group" "target-group" {
  name             = "aadesh-tg-tf"
  target_type      = "instance"
  port             = 80
  protocol         = "HTTP"
  vpc_id           = data.aws_vpc.SquareOps_vpc.id
  protocol_version = "HTTP1"

  health_check {
    protocol            = "HTTP"
    path                = "/"
    port                = "traffic-port"
    healthy_threshold   = 2
    unhealthy_threshold = 3
    timeout             = 5
    interval            = 6
    matcher             = "200"
  }
}