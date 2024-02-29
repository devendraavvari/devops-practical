variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-2"
}
variable "cluster_name" {
  description = "Name of the EKS cluster"
}
variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
}

variable "subnet_cidr_blocks_public" {
  description = "List of CIDR blocks for subnets"
  type        = list(string)
}
variable "subnet_cidr_blocks_private" {
  description = "List of CIDR blocks for subnets"
  type        = list(string)
}

variable "availability_zones" {
  description = "List of availability zones for subnets"
  type        = list(string)
}

variable "security_group_name" {
  description = "Name of the security group for the EKS cluster"
}
variable "node_group_name" {
  description = "Name of the EKS node group"
}

variable "node_instance_types" {
  description = "Instance types for the EKS node group"
  type        = list(string)
}

variable "node_desired_capacity" {
  description = "Desired capacity for the EKS node group"
  type        = number
}

variable "node_max_capacity" {
  description = "Maximum capacity for the EKS node group"
  type        = number
}

variable "node_min_capacity" {
  description = "Minimum capacity for the EKS node group"
  type        = number
}

