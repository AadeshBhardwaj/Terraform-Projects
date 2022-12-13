# Launch Template Fetch
data "aws_launch_template" "lt" {
  filter {
    name   = "tag:Name"
    values = [var.launch_template]
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