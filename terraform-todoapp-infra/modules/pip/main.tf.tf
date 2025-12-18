resource "azurerm_public_ip" "public_ip" {
  name                = "pip-dev-todoapprak"
  resource_group_name = "rg-dev-todoapp-01rak"
  location            = "eastus"

  allocation_method = "Static"
  sku               = "Standard"

  tags = {
    Environment = "dev"
    ManagedBy   = "Terraform"
    Owner       = "TodoAppTeam"
  }
}
