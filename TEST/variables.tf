# VPC
variable "vpc" {
  description = "Name of VPC"
  type        = string
  default     = "VPC-SquareOps-Ohio"
}

# Public Subnet
variable "public_subnet_1" {
  description = "Name of Public Subnet - 1"
  type        = string
  default     = "VPC-SquareOps-Public-Subnet1"
}
variable "public_subnet_2" {
  description = "Name of Public Subnet - 2"
  type        = string
  default     = "VPC-SquareOps-Public-Subnet2"
}

# Private Subnet
variable "private_subnet_1" {
  description = "Name of Private Subnet - 1"
  type        = string
  default     = "VPC-SquareOps-Private-Subnet1"
}
variable "private_subnet_2" {
  description = "Name of Private Subnet - 2"
  type        = string
  default     = "VPC-SquareOps-Private-Subnet2"
}

# ALB Security Group
variable "alb_security_group" {
  description = "Name of Security Group for ALB"
  type        = string
  default     = "aadesh-alb-sg"
}

