#################################
### Resource Group Outputs
#################################

## Resource Group Name
output "resource_group_name" {
  description = "Resource group Name"
  value = azurerm_resource_group.rg.name
}

output "resource_group_id" {
  description = "Resource group ID"
  value = azurerm_resource_group.rg.id
}

#################################
### Virtual Network Outputs
#################################
## Virtual Network Name
output "virtual_network_name" {
  description = "Virtual Network Name"
  value = azurerm_virtual_network.vnet.name
}
## Virtual Network ID
output "virtual_network_id" {
  description = "Virtual Network ID"
  value = azurerm_virtual_network.vnet.id
}

#################################
### Subnet Outputs
#################################

## Subnet Name 
output "web_subnet_name" {
  description = "WebTier Subnet Name"
  value = azurerm_subnet.websubnet.name
}

## Subnet ID 
output "web_subnet_id" {
  description = "WebTier Subnet ID"
  value = azurerm_subnet.websubnet.id
}

####################################
### Network Security Group Outputs
####################################
## Web Subnet NSG Name 
output "web_subnet_nsg_name" {
  description = "WebTier Subnet NSG Name"
  value = azurerm_network_security_group.web_subnet_nsg.name
}

## Web Subnet NSG ID 
output "web_subnet_nsg_id" {
  description = "WebTier Subnet NSG ID"
  value = azurerm_network_security_group.web_subnet_nsg.id
}

#################################
### Load Balancer Outputs
#################################

# LB Public IP
output "web_lb_public_ip_address" {
  description = "Web Load Balancer Public Address"
  value = azurerm_public_ip.web_lbpublicip.ip_address
}

# Load Balancer ID
output "web_lb_id" {
  description = "Web Load Balancer ID."
  value = azurerm_lb.web_lb.id 
}

# Load Balancer Frontend IP Configuration Block
output "web_lb_frontend_ip_configuration" {
  description = "Web LB frontend_ip_configuration Block"
  value = [azurerm_lb.web_lb.frontend_ip_configuration]
}

#################################
### Linux VMSS Outputs
#################################
output "web_vmss_id" {
  description = "Web Virtual Machine Scale Set ID"
  value = azurerm_linux_virtual_machine_scale_set.web_vmss.id 
}

output "web_vmss_name" {
  description = "Web Virtual Machine Scale Set Name"
  value = azurerm_linux_virtual_machine_scale_set.web_vmss.name
}
#################################
### Postgre SQL Outputs
#################################

output "pgserver_id" {
  description = "PostgreSQL server ID"
  value = azurerm_postgresql_server.pgserver.id
}

output "pgserver_name" {
  description = "PostgreSQL server Name"
  value = azurerm_postgresql_server.pgserver.name
}

output "pgdb_id" {
  description = "PostgreSQL Database ID"
  value = azurerm_postgresql_database.pgdb.id
}

output "pgdb_name" {
  description = "PostgreSQL Database Name"
  value = azurerm_postgresql_database.pgdb.name
}