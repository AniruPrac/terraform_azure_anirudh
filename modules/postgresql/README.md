<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | =3.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | =3.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_postgresql_database.main](https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/postgresql_database) | resource |
| [azurerm_postgresql_server.main](https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/postgresql_server) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_administrator_login"></a> [administrator\_login](#input\_administrator\_login) | Local admin login | `string` | n/a | yes |
| <a name="input_administrator_login_password"></a> [administrator\_login\_password](#input\_administrator\_login\_password) | Administration Login Password | `string` | n/a | yes |
| <a name="input_application_name"></a> [application\_name](#input\_application\_name) | The application name that this storage account belongs to | `string` | `"N/A"` | no |
| <a name="input_business_divsion"></a> [business\_divsion](#input\_business\_divsion) | Business Division | `string` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment Ex: Dev, QA, etc. | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | n/a | `string` | n/a | yes |
| <a name="input_owner"></a> [owner](#input\_owner) | The owner of the storage account | `string` | n/a | yes |
| <a name="input_postgresql_database_name"></a> [postgresql\_database\_name](#input\_postgresql\_database\_name) | Name of the virtual network | `string` | `""` | no |
| <a name="input_postgresql_server_name"></a> [postgresql\_server\_name](#input\_postgresql\_server\_name) | Name of the virtual network | `string` | `""` | no |
| <a name="input_postgresql_server_sku_name"></a> [postgresql\_server\_sku\_name](#input\_postgresql\_server\_sku\_name) | value | `string` | `"B_Gen5_2"` | no |
| <a name="input_postgresql_version"></a> [postgresql\_version](#input\_postgresql\_version) | PostgreSQL version | `number` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | The project name that this storage account belongs to | `string` | `"N/A"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of an existing resource group where the storage account lives. When no storage account name is given than the resource group name must be in the K&E naming format. | `string` | n/a | yes |
| <a name="input_zone"></a> [zone](#input\_zone) | Enter abbreviation for Zone. e=External, i=Internal, m=Management | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_postgresql_id"></a> [postgresql\_id](#output\_postgresql\_id) | n/a |
| <a name="output_postgresql_name"></a> [postgresql\_name](#output\_postgresql\_name) | n/a |
<!-- END_TF_DOCS -->