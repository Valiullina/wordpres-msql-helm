module "mysql-helm-chart-deploy" {
    source = "../modules/terraform-helm-local"
    deployment_name = "mysql"
    deployment_namespace = "wordpress"
    deployment_path = "../k8s/helm-charts/mysql-chart"
#     values_yaml = "${file("/k8s/helm-charts/mysql-chart/values.yaml")}"
}

module "wordpress-helm-chart-deploy" {
    source = "../modules/terraform-helm-local"
    deployment_name = "wordpress"
    deployment_namespace = "wordpress"
    deployment_path = "../k8s/helm-charts/wordpress-chart"
#     values_yaml = "${file("/k8s/helm-charts/mysql-chart/values.yaml")}"
}