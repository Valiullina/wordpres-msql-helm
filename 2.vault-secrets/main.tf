module "k8s-service-account" {
    source = "../modules/k8s-service-account"
    service_account_name = "wordpress"
    namespace_name = "wordpress"
}

module "vault_secrets" {
  source = "../modules/vault-secrets"
  google_domain_name = "reginadevops.com"
  mysql_database = "multitenant_wp"
  mysql_user = "userwp"
  policy_name = "k8s_policy"
  mount = "company_passwords"
  secret_name = "wordpress"
  role-name = "wordpress-role"
  service_account_name = ["wordpress"]
  service_account_namespace = ["wordpress"]
}
