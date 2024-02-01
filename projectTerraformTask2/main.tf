provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source = "./modules/vpc"
}

module "subnet" {
  source  = "./modules/subnet"
  vpc_id  = module.vpc.vpc_id
  cidr    = module.vpc.vpc_cidr_block
}

module "security_group" {
  source    = "./modules/security_group"
  vpc_id    = module.vpc.vpc_id
  subnet_id = module.subnet.subnet_id
}

module "internet_gateway" {
  source = "./modules/internet_gateway"
  vpc_id = module.vpc.vpc_id
}

module "Route_table" {
  source             = "./modules/Route_table"
  vpc_id             = module.vpc.vpc_id
  subnet_ids         = [module.subnet.subnet_id]
  internet_gateway_id = module.internet_gateway.internet_gateway_id
  route_table_id     = module.Route_table.route_table_id
  subnet_id       = module.subnet.subnet_id
}


module "ec2" {
  source          = "./modules/ec2"
  subnet_id       = module.subnet.subnet_id
  security_groups = [module.security_group.security_group_id]
}

module "sns" {
  source          = "./modules/sns"
  sns_topic_name  = "monitoring-notification"
}

module "cloud-watch" {
  source        = "./modules/cloud-watch"
  instance_id   = module.ec2.ec2_instance_id
  sns_topic_arn = module.sns.sns_arn
}

terraform {
  backend "s3" {
    bucket         = "bucketfotrerraform"
    key            = "StoretfstateTerraform/terraform.tfstate"
    region         = "us-east-1"
  }
}

