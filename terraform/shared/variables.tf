variable "project_name" {
  description = "Project name."
  type        = string
}

variable "aws_region" {
  description = "AWS region."
  type        = string
}

variable "ecr_repository_name" {
  description = "Name of the shared ECR repository."
  type        = string
}