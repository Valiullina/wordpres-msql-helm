variable "name" {
  type    = string
  default = ""
} 

variable "storage" {
  type    = string
  default = ""
} 

variable "storage-class-name" {
  type    = string
  default = ""
} 

variable "path" {
  type = string 
  default = ""
}

variable "access_mode" {
    type = list
    default = ["ReadWriteOnce"]
}

# variable "namespace" {
#   type = string
#   default = "wordpress"
# }