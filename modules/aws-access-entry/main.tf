resource "aws_eks_access_entry" "node_group" {
  cluster_name  = var.cluster_name
  principal_arn = aws_iam_role.eks_admin_role.arn
  kubernetes_groups = ["system:masters"]
  type          = "STANDARD"
}

resource "aws_eks_access_policy_association" "node_group_policy_association" {
  cluster_name  = var.cluster_name
  policy_arn    = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSAdminPolicy"
  principal_arn = aws_eks_access_entry.node_group.principal_arn

  access_scope {
    type = "cluster"
  }
  depends_on = [aws_iam_role_policy_attachment.eks_admin_role_policy]
}
