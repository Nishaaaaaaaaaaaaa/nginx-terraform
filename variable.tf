variable "region" {
  description = "AWS region"
  default     = "ap-southeast-1"
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  default     = "10.0.0.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR block for the public subnet"
  default     = "10.0.1.0/24"
}


variable "ecs_cluster_name" {
  description = "ECS Cluster name"
  default     = "nginx_cluster"
}

variable "task_definition_image" {
  description = "Docker image for ECS task"
  default     = "nginx:latest"
}

variable "desired_task_count" {
  description = "Desired task count for the ECS service"
  default     = 1
}

variable "ec2_ami" {
  description = "AMI ID for EC2 instance"
  default     = "ami-0da26f95cbfee36fc"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

