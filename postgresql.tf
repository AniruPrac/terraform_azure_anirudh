module "postgre_backend" {
    source = "./modules/postgresql"
    resource_group_name = module.resource_group.resource_group_name
    location = module.resource_group.rg_location
    environment = "dev"
    postgresql_version = 9.5
    postgresql_database_name = "testpostgres"
    postgresql_server_name = "postgreserver"
    postgresql_server_sku_name = "B_Gen4_1"
    administrator_login = "pgsa"
    administrator_login_password = "Password1234"
       
}