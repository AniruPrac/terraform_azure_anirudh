module "subnet1" {
    source = "./modules/subnet"
    resource_group_name = module.resource_group.resource_group_name
    environment = "Dev"
    virtual_network_name = module.vnet.virtual_network_name
    address_prefixes     = ["10.0.1.0/24"]
}

