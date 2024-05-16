module "vmss" {
    source = "./modules/vmss"
    vmss_name = "testvmss"
    resource_group_name = module.resource_group.resource_group_name
    location = module.resource_group.rg_location
    vmss_sku = "Standard_F2"
    application_name = "app"
    admin_username = "vmssadmin"
    admin_password = "Password1234"
    image_publisher = "Canonical"    
    image_offer = "0001-com-ubuntu-server-jammy"
    image_sku = "22_04-lts"
    image_version = "Latest"
    environment = "Dev"
    ip_version = "IPv4"
    subnet_id = module.subnet2.subnet_id

    
}