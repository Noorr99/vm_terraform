variable "resource_group_name" {
  type    = string
  default = "example-rg"
}

variable "location" {
  type    = string
  default = "eastus"
}

variable "admin_username" {
  type    = string
  default = "azureuser"
}

variable "admin_password" {
  type      = string
  sensitive = true
  default   = "P@ssw0rd1234!"
}
