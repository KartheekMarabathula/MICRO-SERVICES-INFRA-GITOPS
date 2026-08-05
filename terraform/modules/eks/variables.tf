variable "cluster_name" {
  description = "Name of the EKS cluster."
  type        = string
}

variable "kubernetes_version" {
  description = "Kubernetes version for the EKS cluster."
  type        = string
}

variable "vpc_id" {
  description = "VPC ID where EKS will be deployed."
  type        = string
}

variable "private_subnet_ids" {
  description = "Private subnet IDs used by the EKS cluster and nodes."
  type        = list(string)
}

variable "node_instance_types" {
  description = "EC2 instance types for the EKS managed node group."
  type        = list(string)

  default = [
    "t3.small"
  ]
}

variable "node_min_size" {
  description = "Minimum number of EKS nodes."
  type        = number

  default = 1
}

variable "node_max_size" {
  description = "Maximum number of EKS nodes."
  type        = number

  default = 2
}

variable "node_desired_size" {
  description = "Desired number of EKS nodes."
  type        = number

  default = 1
}

variable "node_disk_size" {
  description = "EBS disk size in GB for EKS nodes."
  type        = number

  default = 20
}

variable "tags" {
  description = "Common tags for EKS resources."
  type        = map(string)

  default = {}
}