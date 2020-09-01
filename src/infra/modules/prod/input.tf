variable "group" {
    type = string
 }

 variable "location" {
     type = string
}

variable "address_space" {
    type = list(string)
}

variable "mainsubnet01" {
    type = string
    default = "subnet11"
}

variable "mainsubnet02" {
    type = string
    default = "subnet12"
}

variable "mainsubnet01addressprefix" {
    type = list(string)
}

variable "mainsubnet02addressprefix" {
    type = list(string)
}