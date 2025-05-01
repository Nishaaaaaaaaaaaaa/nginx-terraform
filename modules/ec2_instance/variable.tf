variable "ami" {
  description = "AMI ID for EC2 instance"
}

variable "instance_type" {
  description = "EC2 instance type"
}

variable "ecs_cluster_name" {
  description = "ECS Cluster name"
}

variable "subnet_id" {
  description = "Subnet ID where the instance will be launched"
}

variable "security_group_id" {
  description = "Security Group ID for the EC2 instance"
}


variable "key_name" {
  description = "The name of the key pair to use for EC2 instances"
  type        = string
}


