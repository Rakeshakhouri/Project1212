resource "azurerm_container_registry" "acr" {
  name                = "ksdevtodoapprak"
  resource_group_name = "rg-dev-todoapp-01rak"
  location            = "eastus"

  sku                 = "Premium"
  admin_enabled       = false
  public_network_access_enabled = true

  network_rule_set {
    default_action = "Allow"
  }

  tags = {
    Environment = "dev"
    ManagedBy   = "Terraform"
    Owner       = "TodoAppTeam"
  }
}
