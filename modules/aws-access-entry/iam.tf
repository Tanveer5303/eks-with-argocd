resource "aws_iam_user" "eks_admin_user" {
  name = "eks-admin-user"
}
# Create IAM Role for EKS Admin
resource "aws_iam_role" "eks_admin_role" {
  name = "eks-admin-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Principal = {
          AWS = aws_iam_user.eks_admin_user.arn
        },
        Action = "sts:AssumeRole"
      }
    ]
  })
}

# Attach AmazonEKSAdminPolicy to the IAM Role
resource "aws_iam_role_policy_attachment" "eks_admin_role_policy" {
  role       = aws_iam_role.eks_admin_role.name
  policy_arn = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSAdminPolicy"
}