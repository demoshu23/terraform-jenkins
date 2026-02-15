name     = "prod"
vpc_cidr = "10.2.0.0/16"
azs      = ["us-east-1a", "us-east-1b", "us-east-1c"]

tags = {
  Environment = "prod"
  Owner       = "Shu company"
}