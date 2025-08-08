provider "aws" {
  region = var.region
}

module "eks" {
  source = "./modules/aws-eks"

  cluster_name      = var.cluster_name
  cluster_version   = var.cluster_version
  vpc_id            = var.vpc_id
  private_subnets   = var.private_subnets
  public_subnets    = var.public_subnets
  desired_capacity  = var.desired_capacity
  max_capacity      = var.max_capacity
  min_capacity      = var.min_capacity
  node_instance_type = var.node_instance_type
 # ssh_key_name      = var.ssh_key_name
}

module "eks-access-entry" {
  source        = "./modules/aws-access-entry"
  cluster_name  = module.eks.cluster_name
  node_role_arn = module.eks.node_role_arn
  depends_on = [
    module.eks  # <- ensures EKS cluster and role exist before access is set
  ]
}

#module "argocd" {
#  source               = "./modules/argocd"
#  cluster_name         = var.cluster_name
#  argocd_chart_version = "5.51.6"
#  namespace            = "argocd"
#  values_file_path     = "${path.module}/modules/argocd/values/argocd-values.yaml"
#}