provider "vault" {
  address = "https://vault.${var.google_domain_name}"
}

provider "kubernetes" {
  config_path = "~/.kube/config"
}

