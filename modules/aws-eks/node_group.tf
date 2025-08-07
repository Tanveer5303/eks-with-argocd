# Node Group
resource "aws_eks_node_group" "this" {
  cluster_name    = aws_eks_cluster.this.name
  node_group_name = "${var.cluster_name}-ng"
  node_role_arn   = aws_iam_role.node_group_role.arn
  subnet_ids      = var.private_subnets

  scaling_config {
    desired_size = var.desired_capacity
    max_size     = var.max_capacity
    min_size     = var.min_capacity
  }

  #remote_access {
  #  ec2_ssh_key               = var.ssh_key_name
  #  source_security_group_ids = [aws_security_group.node_sg.id]
  #}

  instance_types = [var.node_instance_type]

  depends_on = [aws_iam_role_policy_attachment.node_policies]
}