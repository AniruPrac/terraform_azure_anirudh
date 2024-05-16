resource "azurerm_linux_virtual_machine_scale_set" "main" {
  name                = var.vmss_name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = var.vmss_sku
  instances           = 2
  admin_username      = var.admin_username
  admin_password      = var.admin_password
  tags                = local.tags

  source_image_reference {
    publisher = var.image_publisher
    offer     = var.image_offer
    sku       = var.vmss_sku
    version   = var.image_version
  }

  os_disk {
    storage_account_type = var.storage_account_type
    caching              = "ReadWrite"
  }

  network_interface {
    name    = "example"
    primary = true

    ip_configuration {
      name      = "internal"
      primary   = true
      version   = var.ip_version
      subnet_id = var.subnet_id
    }
  }
}

resource "azurerm_managed_disk" "main" {
  name                 = "${azurerm_linux_virtual_machine_scale_set.main.name}-disk1"
  location             = var.location
  resource_group_name  = var.resource_group_name
  storage_account_type = var.storage_account_type
  create_option        = "Empty"
  disk_size_gb         = 100
}

resource "azurerm_virtual_machine_data_disk_attachment" "example" {
  managed_disk_id    = azurerm_managed_disk.main.id
  virtual_machine_id = azurerm_linux_virtual_machine_scale_set.main.id
  lun                = "10"
  caching            = "ReadWrite"
}