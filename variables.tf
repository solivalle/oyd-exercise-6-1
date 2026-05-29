variable "vpc_name" {
  type        = string
  description = "Name of the VPC to create"
}
variable "vpc_cidr" {
  type        = string
  default     = "10.0.0.0/16"
  description = "CIDR block for the VPC"
}
variable "environment" {
  type        = string
  description = "The environment for which to create the RDS instance (e.g., dev, staging, prod)"
}
variable "region" {
  type        = string
  default     = "us-west-2"
  description = "AWS region"
}
variable "azs" {
  type        = list(string)
  default     = ["us-west-2a", "us-west-2b"]
  description = "List of availability zones to deploy subnets into"
}
variable "public_subnet_cidrs" {
  type        = list(string)
  description = "CIDR blocks for public subnets (one per availability zone)"
}
variable "private_subnet_cidrs" {
  type        = list(string)
  description = "CIDR blocks for private (app) subnets (one per availability zone)"
}