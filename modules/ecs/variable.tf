variable "vpc_id" {
  description = "VPC ID"
}

variable "ecs_cluster_name" {
  description = "ECS Cluster name"
}

variable "task_definition_image" {
  description = "Docker image for ECS task"
}

variable "desired_task_count" {
  description = "Desired task count for ECS service"
}

variable "public_subnet_id" {}

variable "key_name" {
   description = "EC2 key pair name"
   type = string
}

variable "nginx_image" {  # Changed from 'nginx' to 'nginx_image'
  description = "Docker image for ECS task"
}
