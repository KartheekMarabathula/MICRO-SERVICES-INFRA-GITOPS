module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 21.0"

  name               = var.cluster_name
  kubernetes_version = var.kubernetes_version

  endpoint_public_access = true

  vpc_id     = var.vpc_id
  subnet_ids = var.private_subnet_ids

  enable_cluster_creator_admin_permissions = true

  eks_managed_node_groups = {
    default = {
      name = "nodes"

      instance_types = var.node_instance_types

      min_size     = var.node_min_size
      max_size     = var.node_max_size
      desired_size = var.node_desired_size

      capacity_type = "ON_DEMAND"

      disk_size = var.node_disk_size
    }
  }

  tags = var.tags
}