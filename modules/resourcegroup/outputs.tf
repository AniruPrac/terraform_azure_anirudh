output "resource_group_id" {
    value = azurerm_resource_group.main.id
    description = "The resource group object id"
}

output "resource_group_name" {
    value = azurerm_resource_group.main.name
    description = "The resource group object name"
}

output "rg_location" {
    value = azurerm_resource_group.main.location
  
}