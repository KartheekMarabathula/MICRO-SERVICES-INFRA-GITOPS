# SHARED INFRASTRUCTURE OUTPUTS
output "ecr_repository_name" {
  description = "Name of the shared ECR repository."
  value       = aws_ecr_repository.micro_services.name
}

output "ecr_repository_url" {
  description = "URL of the shared ECR repository."
  value       = aws_ecr_repository.micro_services.repository_url
}

output "ecr_repository_arn" {
  description = "ARN of the shared ECR repository."
  value       = aws_ecr_repository.micro_services.arn
}