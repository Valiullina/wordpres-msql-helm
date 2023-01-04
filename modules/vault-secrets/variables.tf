variable "google_domain_name" {
  type        = string
  default     = "awsflow.com"
  description = "Please use your domain"
}

variable "mysql_database" {
  type        = string
  default     = "multitenant_wp"
}
# variable "mysql_password" {
#   type        = string
#   default     = "Mysql.Root2021@"
# }
# variable "mysql_user_password" {
#   type        = string
#   default     = "Mysql.User2021@"
# }


variable "mysql_user"  {
  type        = string
  default     = "userwp"
}


variable   "policy_name" {
  type        = string
  default = "k8s_policy"
}

variable   "mount" {
  type        = string
  default = "company_passwords"
}

variable   "secret_name" {
  type        = string
  default = "wordpress"
}

variable   "role-name" {
  type        = string
  default = "wordpress-role"
}
variable   "service_account_name" {
  type = list
}

variable   "service_account_namespace" {
  type = list
}