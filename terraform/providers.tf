provider "aws" {
  # CHANGE_ME:
  # This must match the AWS region you want to use.
  # We are using ap-south-1 for this project.
  region = var.aws_region

  default_tags {
    tags = {
      Project     = var.project_name
      ManagedBy   = "Terraform"
      Environment = var.environment
    }
  }
}