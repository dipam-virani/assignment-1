terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate5524RG"
    storage_account_name = "tfstate5524sa"
    container_name       = "tfstatefiles"
    key                  = "terraform.tfstate"
  }
}

