variable "cidr_block" {
  description = "CIDR block for the VPC"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
}

variable "region" {
  description = "AWS region for the VPC"
  type        = string
}


variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet"
  type        = string
}
