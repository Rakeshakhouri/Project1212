resource "azurerm_resource_group" "rg" {
  name     = "rg-dev-todoapp-01rak"
  location = "eastus"

  tags = {
    Environment = "dev"
    ManagedBy   = "Terraform"
    Owner       = "TodoAppTeam"
  }
}
