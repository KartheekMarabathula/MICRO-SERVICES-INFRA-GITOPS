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


# EKS

module "eks" {
  source = "./modules/eks"

  cluster_name = "${var.project_name}-${var.environment}-eks"

  kubernetes_version = var.kubernetes_version

  vpc_id = module.networking.vpc_id

  private_subnet_ids = module.networking.private_subnet_ids

  node_instance_types = var.eks_node_instance_types

  node_min_size = var.eks_node_min_size

  node_max_size = var.eks_node_max_size

  node_desired_size = var.eks_node_desired_size

  node_disk_size = var.eks_node_disk_size

  tags = {
    Project     = var.project_name
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}