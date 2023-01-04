

resource "random_password" "mysql-password" {
  length  = 16
  special = false
  numeric = true
}

resource "random_password" "mysql-user-password" {
  length  = 16
  special = false
  numeric = true
}



resource "vault_kv_secret_v2" "secret" {
  mount = var.mount #"company_passwords"
  name  = var.secret_name #"wordpress"
  data_json = jsonencode(
    {
      mysql_password = random_password.mysql-password.result #var.mysql_password
      mysql_user_password = random_password.mysql-user-password.result #var.mysql_user_password
      mysql_database      = var.mysql_database
      mysql_user          = var.mysql_user
    }
  )
}
#  policy that allows kubernetes to read secrets
resource "vault_policy" "example" {
  name = var.policy_name

  policy = <<EOT
path "secret/*" {
  capabilities = ["read", "list"]
}
EOT
}

# Associate the role to service-account.

resource "vault_auth_backend" "kubernetes" {
  type = "kubernetes"
}

resource "vault_kubernetes_auth_backend_role" "example" {
  backend                          = vault_auth_backend.kubernetes.path
  role_name                        = var.role-name #"wordpress-role"
  bound_service_account_names      = var.service_account_name #["wordpress"]
  bound_service_account_namespaces = var.service_account_namespace #["wordpress"]
  token_ttl                        = 3600
  token_policies                   = [vault_policy.example.name]
}