project_name = "micro-services"

environment = "dev"


# aws_region
aws_region = "ap-south-1"


# Dev VPC CIDR
vpc_cidr = "10.10.0.0/16"


# Two AZs for learning/HA architecture.
availability_zones = [
  "ap-south-1a",
  "ap-south-1b"
]


private_subnets = [
  "10.10.1.0/24",
  "10.10.2.0/24"
]


public_subnets = [
  "10.10.101.0/24",
  "10.10.102.0/24"
]

# testing for dev environment.



# EKS dev variables
kubernetes_version = "1.33"

eks_node_instance_types = [
  "t3.small"
]

eks_node_min_size     = 1
eks_node_max_size     = 2
eks_node_desired_size = 1

eks_node_disk_size = 20