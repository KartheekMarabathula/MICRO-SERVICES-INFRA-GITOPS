
# Uses the official terraform-aws-modules/vpc/aws module.
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> 6.0"


  # These values will be passed from the environment-specific tfvars.
  name = var.name

  cidr = var.vpc_cidr

  azs = var.azs

  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets


  # NAT Gateway is disabled to minimize AWS cost.
  enable_nat_gateway = false

  # DNS is required for EKS and AWS service communication.
  enable_dns_hostnames = true
  enable_dns_support   = true


  # PROJECT TAGS
  tags = var.tags

  public_subnet_tags = {
    "kubernetes.io/role/elb" = "1"
  }

  private_subnet_tags = {
    "kubernetes.io/role/internal-elb" = "1"
  }
}