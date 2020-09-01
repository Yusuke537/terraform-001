# Create a RG
resource "azurerm_resource_group" "main" {
  name     = "rg-tf-testenv-001"
  location = "West Europe"
}

module "vnet" {
  source = "../modules/test"
  group = azurerm_resource_group.main.name
  location = azurerm_resource_group.main.location
  address_space = ["10.0.0.0/16"]
  mainsubnet01 = "subnet-tf-testenv-001"
  mainsubnet02 = "subnet-tf-testenv-002"
  mainsubnet01addressprefix = ["10.0.2.0/24"]
  mainsubnet02addressprefix = ["10.0.3.0/24"]
}

resource "azurerm_subnet" "mainsubnet03" {
   name = "subnet-tf-testenv-003"
   resource_group_name = azurerm_resource_group.main.name
   virtual_network_name = "${module.vnet.vnet-name}"
   #mainsubnet02_name = azurerm_virtual_network.main.name
   address_prefixes = var.subnets_addresses[0].s01 #["10.0.1.0/24"]
}