variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
}

variable "argocd_chart_version" {
  description = "Version of the ArgoCD Helm chart"
  type        = string
  default     = "5.51.6"
}

variable "namespace" {
  description = "Namespace to install ArgoCD"
  type        = string
  default     = "argocd"
}

variable "values_file_path" {
  description = "Path to ArgoCD custom values file"
  type        = string
  default     = "${path.module}/values/argocd-values.yaml"
}