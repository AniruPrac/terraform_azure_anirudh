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
| [azurerm_virtual_network.main](https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/virtual_network) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_addressSpace"></a> [addressSpace](#input\_addressSpace) | n/a | `list(any)` | <pre>[<br>  "10.1.0.0/16"<br>]</pre> | no |
| <a name="input_application_name"></a> [application\_name](#input\_application\_name) | The application name that this storage account belongs to | `string` | `"N/A"` | no |
| <a name="input_business_divsion"></a> [business\_divsion](#input\_business\_divsion) | Business Division | `string` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment Ex: Dev, QA, etc. | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | n/a | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name of the virtual network | `string` | `""` | no |
| <a name="input_owner"></a> [owner](#input\_owner) | The owner of the storage account | `string` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | The project name that this storage account belongs to | `string` | `"N/A"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of an existing resource group where the storage account lives. When no storage account name is given than the resource group name must be in the K&E naming format. | `string` | n/a | yes |
| <a name="input_vnet_dns_servers"></a> [vnet\_dns\_servers](#input\_vnet\_dns\_servers) | DNS for virtual network | `list(any)` | `[]` | no |
| <a name="input_zone"></a> [zone](#input\_zone) | Enter abbreviation for Zone. e=External, i=Internal, m=Management | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_virtual_network_id"></a> [virtual\_network\_id](#output\_virtual\_network\_id) | Virtual Network ID |
| <a name="output_virtual_network_name"></a> [virtual\_network\_name](#output\_virtual\_network\_name) | Virtual Network Name |
<!-- END_TF_DOCS -->