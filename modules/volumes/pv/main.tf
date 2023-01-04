resource "kubernetes_persistent_volume_v1" "example" {
  metadata {
    name = var.name
  }
  spec {
    capacity = {
      storage = var.storage
    }
    storage_class_name = var.storage-class-name
    access_modes = var.access_mode
    persistent_volume_source {
        host_path {
         path = var.path
     }
    }
  }


}