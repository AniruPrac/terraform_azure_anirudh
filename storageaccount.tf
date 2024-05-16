module "storage_account" {
    source                      = "./modules/storageaccount"
    environment                 = "Dev"
    storage_account_name        = "teststorageaccountvanka"
    resource_group_name         = module.resource_group.resource_group_name
    location                    = module.resource_group.rg_location
    storage_account_tier        = "Standard"
    storage_account_kind        = "StorageV2"
}