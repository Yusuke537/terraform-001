# Create a virtual network in the production-resources resource group
resource "azurerm_virtual_network" "main" {
  name                = "vnet-tf-testenv-002"
  resource_group_name = var.group
  location            = var.location
  address_space       = var.address_space
}

resource "azurerm_subnet" "subnet01" {
   name = var.mainsubnet01
   resource_group_name = var.group
   virtual_network_name = azurerm_virtual_network.main.name
   #mainsubnet01_name = azurerm_virtual_network.main.name
   address_prefixes = var.mainsubnet01addressprefix
}

resource "azurerm_subnet" "subnet02" {
   name = var.mainsubnet02
   resource_group_name = var.group
   virtual_network_name = azurerm_virtual_network.main.name
   #mainsubnet02_name = azurerm_virtual_network.main.name
   address_prefixes = var.mainsubnet02addressprefix
}