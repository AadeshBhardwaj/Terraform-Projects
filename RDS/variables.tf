# RDS Security Group
variable "rds_security_group" {
  description = "Name of Security Group for RDS"
  type        = string
  default     = "aadesh-rds-sg"
}