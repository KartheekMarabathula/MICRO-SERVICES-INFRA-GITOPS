variable "project_name" {
  description = "Project name used for resource naming and tagging."
  type        = string
}

variable "environment" {
  description = "Deployment environment."
  type        = string

  validation {
    condition = contains(
      ["dev", "test", "stage"],
      var.environment
    )

    error_message = "Environment must be dev, test, or stage."
  }
}

variable "aws_region" {
  description = "AWS region where resources will be created."
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the environment VPC."
  type        = string
}

variable "availability_zones" {
  description = "Availability Zones used by the VPC."
  type        = list(string)
}

variable "private_subnets" {
  description = "Private subnet CIDR blocks."
  type        = list(string)
}

variable "public_subnets" {
  description = "Public subnet CIDR blocks."
  type        = list(string)
}