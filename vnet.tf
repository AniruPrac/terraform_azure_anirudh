module "vnet" {
    source = "./modules/vnet"
    vnet_name = "testvnet"
    resource_group_name = module.resource_group.resource_group_name
    location = module.resource_group.rg_location
    address_space   = ["10.0.1.0/24"]
    environment = "Dev"
}