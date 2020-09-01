variable "resource_group" { }

variable "subnets_addresses" {
  type = list(object({
    s01 = list(string)
    s02 = list(string)
    s03 = list(string)
  }))
  default = [
    {
      s01 = ["10.0.2.0/24"]
      s02 = ["10.0.3.0/24"]
      s03 = ["10.0.1.0/24"]
    }
  ]
}