# Application Load Balancer Configuration Fetch
module "ALB" {
  source = "../ALB"  
}

# Auto-Scaling Group Configuration
resource "aws_autoscaling_group" "asg" {
  name             = "Aadesh-ASG-TF"
  max_size         = 4
  min_size         = 0
  desired_capacity = 0
  launch_template {
    id      = data.aws_launch_template.lt.id
    version = "$Latest"
  }
  vpc_zone_identifier = [data.aws_subnet.private_subnet_1.id, data.aws_subnet.private_subnet_2.id]
}

# ASG-ALB Attachment Configuration
resource "aws_autoscaling_attachment" "asg_alb_attachment" {
  autoscaling_group_name = aws_autoscaling_group.asg.name
  target_group_arn    = aws_lb_target_group.target-group.arn[0]
}
