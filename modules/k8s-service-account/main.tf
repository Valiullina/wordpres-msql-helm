resource "kubernetes_service_account" "example" {
  metadata {
    name = var.service_account_name
    namespace = var.namespace_name
  }
}