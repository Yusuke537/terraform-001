terraform {
  backend "azurerm" {
    resource_group_name  = "rg-terraform-backend-001"
    storage_account_name = "stgtfbackend001"
    container_name       = "tfstates-testenv-001"
    key                  = "01-testenv.tfstate"
  }
}