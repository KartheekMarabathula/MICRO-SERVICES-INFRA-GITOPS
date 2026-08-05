# VPC Variables
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



# EKS Variables
variable "kubernetes_version" {
  description = "Kubernetes version for the EKS cluster."
  type        = string
}

variable "eks_node_instance_types" {
  description = "EC2 instance types for EKS managed nodes."
  type        = list(string)

  default = [
    "t3.small"
  ]
}

variable "eks_node_min_size" {
  description = "Minimum EKS node count."
  type        = number

  default = 1
}

variable "eks_node_max_size" {
  description = "Maximum EKS node count."
  type        = number

  default = 2
}

variable "eks_node_desired_size" {
  description = "Desired EKS node count."
  type        = number

  default = 1
}

variable "eks_node_disk_size" {
  description = "EKS node disk size in GB."
  type        = number

  default = 20
}