#Module for VPC creation
module "vpc" {
  source = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
  subnet_cidr = var.subnet_cidr
}

#Module for Security Group creation
module "sg" {
  source = "./modules/sg"
  vpc_id = module.vpc.vpc_id
}

#Module for EC2 instance creation
module "ec2" {
  source = "./modules/ec2"
  sg_id = module.sg.sg_id
  subnets = module.vpc.subnet_ids
}

#Module for Application Load Balancer creation
module "alb" {
  source = "./modules/alb"
  sg_id = module.sg.sg_id
  subnets = module.vpc.subnet_ids
  vpc_id = module.vpc.vpc_id
  instances = module.ec2.instances
}