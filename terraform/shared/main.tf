# SHARED INFRASTRUCTURE
# Resources in this folder are shared across all environments:
#   dev
#   test
#   stage

# ECR Repository
resource "aws_ecr_repository" "micro_services" {
  name                 = "${var.project_name}-services"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = false
  }

  encryption_configuration {
    encryption_type = "AES256"
  }

  tags = {
    Project     = var.project_name
    Environment = "shared"
    ManagedBy   = "Terraform"
  }
}

#checking the shared pipeline.