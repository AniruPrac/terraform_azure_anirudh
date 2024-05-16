output "load_balancer_id" {
  value       = azurerm_lb.main.id
  description = "ID of the created Azure Load Balancer"
}

output "backend_address_pool_id" {
  value       = azurerm_lb_backend_address_pool.main.id
  description = "ID of the created backend address pool"
}

output "probe_id" {
  value       = azurerm_lb_probe.main.id
  description = "ID of the created probe"
}

output "lb_rule_ids" {
  value = [
    azurerm_lb_rule.ext1.id,
    azurerm_lb_rule.ext2.id
  ]
  description = "IDs of the created load balancing rules"
}
