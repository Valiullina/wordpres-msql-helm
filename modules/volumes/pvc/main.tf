resource "kubernetes_persistent_volume_claim_v1" "example" {
  metadata {
    name = var.name
        namespace = var.namespace
  }
  spec {
    access_modes = var.access_mode
    storage_class_name = var.storage-class-name

    resources {
      requests = {
        storage = var.storage
      }
    }
  }
}
