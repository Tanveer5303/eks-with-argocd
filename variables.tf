variable "region" {}
variable "cluster_name" {}
variable "cluster_version" {}
variable "vpc_id" {}
variable "private_subnets" {
  type = list(string)
}
variable "public_subnets" {
  type = list(string)
}
variable "desired_capacity" {}
variable "max_capacity" {}
variable "min_capacity" {}
variable "node_instance_type" {}
#variable "ssh_key_name" {}
