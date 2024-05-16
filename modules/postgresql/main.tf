

resource "azurerm_postgresql_server" "main" {
  name                          = var.postgresql_server_name
  location                      = var.location
  resource_group_name           = var.resource_group_name
  sku_name                      = var.postgresql_server_sku_name

  storage_mb                    = 5120
  backup_retention_days         = 7
  geo_redundant_backup_enabled  = false
  auto_grow_enabled             = true

  administrator_login           = var.administrator_login
  administrator_login_password  = var.administrator_login_password
  version                       = var.postgresql_version
  ssl_enforcement_enabled       = true
  ssl_minimal_tls_version_enforced = "TLS1_2"
  public_network_access_enabled = false
}

resource "azurerm_postgresql_database" "main" {
  name                = var.postgresql_database_name
  resource_group_name = var.resource_group_name
  server_name         = azurerm_postgresql_server.main.name
  charset             = "UTF8"
  collation           = "English_United States.1252"

  # prevent the possibility of accidental data loss
  lifecycle {
    prevent_destroy = true
  }
  
}