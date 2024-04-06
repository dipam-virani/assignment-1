terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate7297RG"
    storage_account_name = "tfstate7297sa"
    container_name       = "tfstatefiles"
    key                  = "terraform.tfstate"
  }
}

