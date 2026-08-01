module "networking" {
  source = "./modules/networking"

  name = "${var.project_name}-${var.environment}"

  vpc_cidr = var.vpc_cidr

  azs = var.availability_zones

  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets

  tags = {
    Project     = var.project_name
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}