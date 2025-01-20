# Create a resource group
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

# Provision the first VM by calling the module
module "vm1" {
  source              = "./modules/azure_vm"
  vm_name             = "myvm1"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  admin_username      = var.admin_username
  admin_password      = var.admin_password
}

# Provision the second VM by calling the module
module "vm2" {
  source              = "./modules/azure_vm"
  vm_name             = "myvm2"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  admin_username      = var.admin_username
  admin_password      = var.admin_password
}
