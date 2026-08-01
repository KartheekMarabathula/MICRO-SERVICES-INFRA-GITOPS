variable "aws_region" {
  description = "AWS region where bootstrap resources are created."
  type        = string
}

variable "project_name" {
  description = "Project name used for resource naming and tagging."
  type        = string
}

variable "state_bucket_name" {
  description = "S3 bucket used to store Terraform state."
  type        = string
}

variable "github_repository" {
  description = "GitHub repository allowed to assume the Terraform IAM role."
  type        = string
}