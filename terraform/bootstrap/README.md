# Terraform Bootstrap

This directory creates the foundational AWS resources required by the
Terraform infrastructure pipeline.

## Responsibilities

The bootstrap creates:

- S3 bucket for Terraform remote state
- S3 versioning
- Server-side encryption
- S3 public access protection
- GitHub Actions OIDC provider
- IAM role for GitHub Actions

## State Locking

Terraform uses native S3 state locking through the S3 backend.

DynamoDB state locking is not used.

## Important

Bootstrap is executed only when the project is initially established
or when the bootstrap infrastructure needs to be changed.

The main Terraform infrastructure uses the S3 bucket created here
as its remote backend.