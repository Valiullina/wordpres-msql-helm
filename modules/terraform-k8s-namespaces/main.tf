resource "kubernetes_namespace" "example" {
  metadata {
    labels      = var.labels
    name        = var.namespace_name
  }
}