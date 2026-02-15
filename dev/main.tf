provider "aws" {
  region = var.aws_region
}

terraform {
  backend "s3" {
    bucket = "jenkins-terraform-2026"
    key = "dev/terraform.tfstate"
    region = "us-east-1"
  }
}

module "vpc" {
  source   = "../modules/vpc"
  name     = var.name
  vpc_cidr = var.vpc_cidr
  azs      = var.azs
  tags     = var.tags
}
