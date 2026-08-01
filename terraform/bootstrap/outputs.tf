output "terraform_state_bucket_name" {
  description = "Name of the S3 bucket used for Terraform state."
  value       = module.terraform_state_bucket.s3_bucket_id
}

output "terraform_state_bucket_arn" {
  description = "ARN of the S3 bucket used for Terraform state."
  value       = module.terraform_state_bucket.s3_bucket_arn
}

output "github_oidc_provider_arn" {
  description = "ARN of the GitHub Actions OIDC provider."
  value       = aws_iam_openid_connect_provider.github.arn
}

output "github_actions_role_arn" {
  description = "ARN of the IAM role assumed by GitHub Actions."
  value       = aws_iam_role.github_actions_terraform.arn
}