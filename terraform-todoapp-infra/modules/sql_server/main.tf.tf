resource "azurerm_mssql_server" "sql_server" {
  name                         = "sql-dev-todoapp-01rak-cu"
  resource_group_name          = "rg-dev-todoapp-01rak"
  location                     = "centralus"
  version                      = "12.0"

  administrator_login          = "devopsadmin"
  administrator_login_password = "DummyPassword@123" # TEMP

  public_network_access_enabled = true
  minimum_tls_version           = "1.2"

  tags = {
    Environment = "dev"
    ManagedBy   = "Terraform"
    Owner       = "TodoAppTeam"
  }
  lifecycle {
  ignore_changes = [
    administrator_login_password
  ]
}
}
