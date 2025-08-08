region             = "ap-south-1"  # Mumbai region (supports EKS)

cluster_name       = "eks-cluster"
cluster_version    = "1.32"

# Replace these with actual VPC and Subnet IDs from your existing VPC (or ask if you want a Terraform VPC setup)
vpc_id             = "vpc-0a398b9d81fe93f71"
private_subnets    = ["subnet-00f90c299a3c83f61","subnet-088b1b1015e7405f8"]
public_subnets     = ["subnet-0b3ddc09d94aa121a"]

# Node group config — keep it minimal
desired_capacity   = 1
min_capacity       = 1
max_capacity       = 1

# Use Free Tier eligible instance type
node_instance_type = "t3.micro"
