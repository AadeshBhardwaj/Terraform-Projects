# Launch Template
variable "launch_template" {
  description = "Name of Launch Template"
  type        = string
  default     = "Aadesh-CICD"
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