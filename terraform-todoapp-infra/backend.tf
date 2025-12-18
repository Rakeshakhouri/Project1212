terraform {
  backend "azurerm" {
    resource_group_name  = "rgrak"
    storage_account_name = "storak"
    container_name       = "tfstate"
    key                  = "dev.tfstate"
  }
}

