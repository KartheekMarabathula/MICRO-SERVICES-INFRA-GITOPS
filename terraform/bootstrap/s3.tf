module "terraform_state_bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "~> 5.0"

  bucket = var.state_bucket_name

  force_destroy = false

  object_ownership = "BucketOwnerEnforced"

  versioning = {
    enabled = true
  }

  server_side_encryption_configuration = {
    rule = {
      apply_server_side_encryption_by_default = {
        sse_algorithm = "AES256"
      }
    }
  }

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true

  attach_deny_insecure_transport_policy = true

  tags = {
    Name      = var.state_bucket_name
    Purpose   = "Terraform State"
    Project   = var.project_name
    ManagedBy = "Terraform"
  }
}