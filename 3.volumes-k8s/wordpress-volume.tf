module "wordpress-volume" {
    source = "../modules/volumes/pv"
    name = "wordpress-pv"
    storage =  "3Gi"
    storage-class-name = "do-block-storage"
    path = "/var/www/html"

}

module "wordpress-pvc" {
    source = "../modules/volumes/pvc"
    name = "wordpress-pv-claim"
    storage =  "3Gi"
    storage-class-name = "do-block-storage"

}