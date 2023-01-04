module "wordpress" {
  source             = "../modules/monitoring"
  google_domain_name = var.google_domain_name
  PROJECT_ID         = var.PROJECT_ID
  service_name       = "wordpress"
}