project_name = "micro-services"

environment = "stage"

aws_region = "ap-south-1"

vpc_cidr = "10.30.0.0/16"

availability_zones = [
  "ap-south-1a",
  "ap-south-1b"
]

private_subnets = [
  "10.30.1.0/24",
  "10.30.2.0/24"
]

public_subnets = [
  "10.30.101.0/24",
  "10.30.102.0/24"
]

# Change detection testing third test



# EKS dev variables
kubernetes_version = "1.33"

eks_node_instance_types = [
  "t3.small"
]

eks_node_min_size     = 1
eks_node_max_size     = 2
eks_node_desired_size = 1

eks_node_disk_size = 20