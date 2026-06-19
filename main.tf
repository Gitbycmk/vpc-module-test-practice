module "vpc" {
  source = "../terraform-aws-vpc-practice"
  
  vpc_cidr = var.vpc_cidr
  project_name = var.project_name
  environment = var.environment
}