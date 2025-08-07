variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "node_role_arn" {
  description = "ARN of the IAM role used by the managed node group"
  type        = string
}
