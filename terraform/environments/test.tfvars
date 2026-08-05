
project_name = "micro-services"

environment = "test"

aws_region = "ap-south-1"

vpc_cidr = "10.20.0.0/16"

availability_zones = [
  "ap-south-1a",
  "ap-south-1b"
]

private_subnets = [
  "10.20.1.0/24",
  "10.20.2.0/24"
]

public_subnets = [
  "10.20.101.0/24",
  "10.20.102.0/24"
]

# testing test.tfvars file for change detection
# test for drift clear final test number 2



# EKS dev variables
kubernetes_version = "1.33"

eks_node_instance_types = [
  "t3.small"
]

eks_node_min_size     = 1
eks_node_max_size     = 2
eks_node_desired_size = 1

eks_node_disk_size = 20