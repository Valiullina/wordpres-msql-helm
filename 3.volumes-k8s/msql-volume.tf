module "mysql-volume" {
    source = "../modules/volumes/pv"
    name = "mysql-pv"
    storage =  "2Gi"
    storage-class-name = "do-block-storage"
    path = "/var/lib/mysql"

}

# module "mysql-pvc" {
#     source = "../modules/volumes/pvc"
#     name = "mysql-pv-claim"
#     storage =  "2Gi"
#     storage-class-name = "do-block-storage"

# }