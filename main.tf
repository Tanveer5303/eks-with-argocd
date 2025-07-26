provider "aws" {
  region = var.region
}

module "eks" {
  source = "./modules/eks"

  cluster_name      = var.cluster_name
  cluster_version   = var.cluster_version
  vpc_id            = var.vpc_id
  private_subnets   = var.private_subnets
  public_subnets    = var.public_subnets
  desired_capacity  = var.desired_capacity
  max_capacity      = var.max_capacity
  min_capacity      = var.min_capacity
  node_instance_type = var.node_instance_type
  ssh_key_name      = var.ssh_key_name
}
