resource "aws_db_instance" "rds-instance" {
  engine                     = "mysql"
  engine_version             = "8.0.28"
  allocated_storage          = 20
  db_name                    = "aadesh_db"
  instance_class             = "db.t3.micro"
  username                   = "aadesh_db"
  password                   = "aadesh_dbpw"
  parameter_group_name       = "default.mysql8.0"
  option_group_name          = "default:mysql-8-0"
  db_subnet_group_name       = "aadesh-rds-sg"
  auto_minor_version_upgrade = "true"
  availability_zone          = "us-east-2a"
  skip_final_snapshot        = "true"
  identifier                 = "aadesh-db-tf"
  port                       = 3306
  storage_type               = "gp2"
  vpc_security_group_ids     = [data.aws_security_group.rds_sg.id]
}