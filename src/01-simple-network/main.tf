# Create a RG
resource "azurerm_resource_group" "main" {
  name     = "rg-simple-vnet-tf-001"
  location = "West Europe"
}

module "vnet" {
  source = "../modules/02-tier-vnet"
  group = azurerm_resource_group.main.name
  location = azurerm_resource_group.main.location
  address_space = ["10.0.0.0/16"]
  mainsubnet01 = "subnet01"
  mainsubnet02 = "subnet02"
  mainsubnet01addressprefix = ["10.0.2.0/24"]
  mainsubnet02addressprefix = ["10.0.3.0/24"]
}

resource "azurerm_subnet" "mainsubnet03" {
   name = "subnet03"
   resource_group_name = azurerm_resource_group.main.name
   virtual_network_name = "${module.vnet.vnet-name}"
   #mainsubnet02_name = azurerm_virtual_network.main.name
   address_prefixes = var.subnets_addresses[0].s01 #["10.0.1.0/24"]
}