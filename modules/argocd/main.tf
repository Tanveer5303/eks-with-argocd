#provider "helm" {
#  kubernetes {
#    config_path = "~/.kube/config"
#  }
#}
#
#resource "helm_release" "argocd" {
#  name       = "argocd"
#  namespace  = "argocd"
#  repository = "https://argoproj.github.io/argo-helm"
#  chart      = "argo-cd"
#  version    = var.argocd_chart_version
#
#  create_namespace = true
#
#  values = [
#    file("${path.module}/values/argocd-values.yaml")
#  ]
#}
#