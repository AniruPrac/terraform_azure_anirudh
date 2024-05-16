# Subnet Outputs (We will write for one web subnet and rest all we will ignore for now)
## Subnet Name 
output "subnet_name" {
  description = "Subnet Name"
  value = azurerm_subnet.main.name
}

## Subnet ID 
output "subnet_id" {
  description = "Subnet ID"
  value = azurerm_subnet.main.id
}
