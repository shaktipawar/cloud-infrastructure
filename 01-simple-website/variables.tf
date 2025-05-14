variable "organization" {
  description = "AWS region to deploy the VPC"
  type        = string
}

variable "aws_region" {
  description = "AWS region to deploy the VPC"
  type        = string
}

variable "environment" {
  description = "Environment name. e.g. dev, test, prod"
  type        = string  
}

variable "product_name" {
  description = "Product name. e.g. Alias given to Product, like Flipkart, Myntra ...."
  type        = string
}

# VPC Variables #

variable "instance_tenancy" {
  description = "Instance tenancy. Default value is set as default"
  type        = string
  default     = "default"
}

variable "cidr_block" {
  description = "CIDR block for the VPC"
  type        = string 
}

variable "enable_dns_hostnames" {
  description = "Enable DNS hostnames. Required for public access. Default value is true"
  type        = bool
  default     = true
}

variable "enable_dns_support" {
  description = "Enable DNS support. Required for public access. Default value is true"
  type        = bool
  default     = true
}

variable "vpc_tags" {
  description = "Tags to be applied to the VPC. Do not add tags like Environment, CreatedBy, CreatedOn, Product_Name. They are already considered."
  type        = map(string)
  default = {}
}