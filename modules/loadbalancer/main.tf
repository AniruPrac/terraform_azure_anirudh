# Resource-1: Create Public IP Address for Azure Load Balancer
resource "azurerm_public_ip" "main" {
  name                = "${var.resource_group_name}-lbpublicip"
  resource_group_name = var.resource_group_name
  location            = var.location
  allocation_method   = var.public_ip_allocation_method
  sku = var.public_ip_sku
  tags = local.tags
}

# Resource-2: Create Azure Standard Load Balancer
resource "azurerm_lb" "main" {
  name                = var.lb_name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = var.lb_sku
  tags                = local.tags

  frontend_ip_configuration {
    name                 = var.frontend_ip_configuration_name
    public_ip_address_id = azurerm_public_ip.main.id
  }
}

# Resource-3: Create LB Backend Pool
resource "azurerm_lb_backend_address_pool" "main" {
  loadbalancer_id = azurerm_lb.main.id
  name            = var.BackEndAddressPool_name
}

# Resource-4: Create LB Probe
resource "azurerm_lb_probe" "main" {
  loadbalancer_id     = azurerm_lb.main.id
  name                = var.probe_name
  port                = var.port
  interval_in_seconds = var.interval_in_seconds
  number_of_probes    = var.number_of_probes
}

# Resource-5: Create LB Rule 1
resource "azurerm_lb_rule" "ext1" {
  loadbalancer_id                = azurerm_lb.main.id
  name                           = var.lb_rule_name
  protocol                       = var.protocol
  frontend_port                  = var.frontend_port
  backend_port                   = var.backend_port
  frontend_ip_configuration_name = var.frontend_ip_configuration_name
  backend_address_pool_ids       = [azurerm_lb_backend_address_pool.main.id]
  probe_id                       = azurerm_lb_probe.main.id
  enable_floating_ip             = var.enable_floating_ip
  idle_timeout_in_minutes        = var.idle_timeout_in_minutes
  enable_tcp_reset               = var.enable_tcp_reset
  load_distribution              = var.load_distribution
  disable_outbound_snat          = var.disable_outbound_snat
}
# Resource-6: Create LB Rule 2
resource "azurerm_lb_rule" "ext2" {
  loadbalancer_id                = azurerm_lb.main.id
  name                           = var.lb_rule_name_2
  protocol                       = var.protocol_2
  frontend_port                  = var.frontend_port_2
  backend_port                   = var.backend_port_2
  frontend_ip_configuration_name = var.frontend_ip_configuration_name
  backend_address_pool_ids       = [azurerm_lb_backend_address_pool.main.id]
  probe_id                       = azurerm_lb_probe.main.id
  enable_floating_ip             = var.enable_floating_ip_2
  idle_timeout_in_minutes        = var.idle_timeout_in_minutes_2
  enable_tcp_reset               = var.enable_tcp_reset_2
  load_distribution              = var.load_distribution_2
  disable_outbound_snat          = var.disable_outbound_snat_2
}


