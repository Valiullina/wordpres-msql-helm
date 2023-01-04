module "k8s-namespace" {
    source = "../modules/terraform-k8s-namespace"
    labels = {
        app = "wordpress"
    }
    namespace_name = "wordpress"
}