terraform {
  #  Minimum Terraform version.
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source = "hashicorp/aws"

      # Required by the current VPC module we are using.
      version = ">= 6.28.0"
    }
  }
}