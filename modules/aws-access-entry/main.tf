resource "aws_eks_access_entry" "node_group" {
  cluster_name  = var.cluster_name
  principal_arn = var.node_role_arn
  type          = "STANDARD"
}

resource "aws_eks_access_policy_association" "node_group_policy" {
  cluster_name  = var.cluster_name
  policy_arn    = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSNodeAccessPolicy"
  principal_arn = var.node_role_arn

  access_scope {
    type = "cluster"
  }
}