# RDS Security Group Fetch
data "aws_security_group" "rds_sg" {
  filter {
    name   = "tag:Name"
    values = [var.rds_security_group]
  }

}