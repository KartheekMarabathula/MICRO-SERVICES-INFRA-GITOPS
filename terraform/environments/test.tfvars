
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
# test for drift clear final test