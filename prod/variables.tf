variable "aws_region" {
  description = "AWS region"
  type        = string
  default = "us-east-1"
}

variable "name" {
  description = "Name prefix"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
}

variable "azs" {
  description = "List of availability zones"
  type        = list(string)
}

variable "tags" {
  description = "Tags"
  type        = map(string)
  default     = {}
}