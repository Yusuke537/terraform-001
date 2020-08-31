# Create a RG
resource "azurerm_resource_group" "main" {
  name     = "rg-simple-vnet-tf-001"
  location = "West Europe"
}

# Create a virtual network in the production-resources resource group
resource "azurerm_virtual_network" "main" {
  name                = "vnet-tf-001"
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
  address_space       = ["10.0.0.0/16"]
}