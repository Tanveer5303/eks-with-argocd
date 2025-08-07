variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "cluster_version" {
  description = "Kubernetes version for EKS"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "private_subnets" {
  description = "Private subnet IDs"
  type        = list(string)
}

variable "public_subnets" {
  description = "Public subnet IDs"
  type        = list(string)
}

variable "desired_capacity" {
  description = "Desired number of nodes"
  type        = number
}

variable "max_capacity" {
  description = "Max number of nodes"
  type        = number
}

variable "min_capacity" {
  description = "Min number of nodes"
  type        = number
}

variable "node_instance_type" {
  description = "EC2 instance type for nodes"
  type        = string
}

# Uncomment if needed
# variable "ssh_key_name" {
#   description = "SSH key name"
#   type        = string
# }
