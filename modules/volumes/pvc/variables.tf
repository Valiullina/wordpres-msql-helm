variable "name" {
  type    = string
  default = ""
} 

variable "namespace" {
  type    = string
  default = "wordpress"
} 


variable "access_mode" {
    type = list
    default = ["ReadWriteOnce"]
}

variable "storage-class-name" {
  type    = string
  default = ""
} 

variable "storage" {
  type    = string
  default = ""
} 
