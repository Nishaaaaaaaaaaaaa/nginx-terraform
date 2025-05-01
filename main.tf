provider "aws" {
  region = var.region
}

module "vpc" {
  source = "./modules/vpc"
  cidr_block = var.vpc_cidr_block
  region = var.region
  public_subnet_cidr = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr

}

module "ecs" {
  source = "./modules/ecs"
  vpc_id = module.vpc.vpc_id
  public_subnet_id = module.vpc.public_subnet_id
  ecs_cluster_name = var.ecs_cluster_name
  task_definition_image = var.task_definition_image
  desired_task_count = var.desired_task_count
  nginx_image = "nginx:latest"
  key_name = "ecs-keypair"
}



module "ec2_instance" {
  source = "./modules/ec2_instance"
  ami = var.ec2_ami
  instance_type = var.instance_type
  ecs_cluster_name = var.ecs_cluster_name
  subnet_id = module.vpc.private_subnet_id 
  security_group_id = module.ecs.security_group_id
  key_name  = module.ecs.key_name

}


output "ec2_public_ip" {
  value = module.ec2_instance.public_ip
  description = "Public IP of the EC2 instance"
}
