resource "azurerm_mssql_database" "sql_db" {
  name      = "sqldb-dev-todoapprak"
  server_id = var.sql_server_id

  sku_name  = "S0"
  max_size_gb = 2
  collation = "SQL_Latin1_General_CP1_CI_AS"

  geo_backup_enabled = true
  zone_redundant     = false

  tags = {
    Environment = "dev"
    ManagedBy   = "Terraform"
    Owner       = "TodoAppTeam"
  }
}
