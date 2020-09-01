terraform {
  backend "azurerm" {
    resource_group_name  = "rg-network-terraform-backend-001"
    storage_account_name = "stgterraformbackend001"
    container_name       = "tfstates-network-001"
    key                  = "01-simple-network.tfstate"
  }
}