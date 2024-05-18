resource "azurerm_postgresql_server" "pgserver" {
  name                          = "${local.resource_name_prefix}-pgserver"
  location                      = azurerm_resource_group.rg.location
  resource_group_name           = azurerm_resource_group.rg.name
  sku_name                      = "B_Gen4_1"

  storage_mb                    = 5120
  backup_retention_days         = 7
  geo_redundant_backup_enabled  = false
  auto_grow_enabled             = true

  administrator_login           = "pgserversa"
  administrator_login_password  = "test123"
  version                       = "9.5"
  ssl_enforcement_enabled       = true
  ssl_minimal_tls_version_enforced = "TLS1_2"
  public_network_access_enabled = false
}

resource "azurerm_postgresql_database" "pgdb" {
  name                = "${local.resource_name_prefix}-pgserver"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_postgresql_server.pgserver.name
  charset             = "UTF8"
  collation           = "English_United States.1252"

  # prevent the possibility of accidental data loss
  lifecycle {
    prevent_destroy = true
  }
  
}