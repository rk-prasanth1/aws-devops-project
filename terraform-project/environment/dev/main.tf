terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.68.0"
    }
  }
}

provider "aws" {
    region = var.region
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.vpc_name
  cidr = var.cidr

  azs             = var.avilability_zone
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets

  one_nat_gateway_per_az = true
  enable_vpn_gateway = true

  tags = {
    Name = "project vpc"
    Terraform = "true"
    Environment = "dev"
  }
}

