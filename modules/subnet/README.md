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
| [azurerm_subnet.main](https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/subnet) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_application_name"></a> [application\_name](#input\_application\_name) | The application name that this storage account belongs to | `string` | `"N/A"` | no |
| <a name="input_business_divsion"></a> [business\_divsion](#input\_business\_divsion) | Business Division | `string` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment Ex: Dev, QA, etc. | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name of the Subnet | `string` | `""` | no |
| <a name="input_owner"></a> [owner](#input\_owner) | The owner of the storage account | `string` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | The project name that this storage account belongs to | `string` | `"N/A"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of an existing resource group. When no subnet name is given than the resource group name must be in the K&E naming format. | `string` | n/a | yes |
| <a name="input_service_endpoints"></a> [service\_endpoints](#input\_service\_endpoints) | n/a | `list(any)` | <pre>[<br>  "Microsoft.AzureActiveDirectory",<br>  "Microsoft.ContainerRegistry",<br>  "Microsoft.KeyVault",<br>  "Microsoft.Storage"<br>]</pre> | no |
| <a name="input_subnet_addressSpaces"></a> [subnet\_addressSpaces](#input\_subnet\_addressSpaces) | n/a | `list(any)` | <pre>[<br>  "10.1.0.0/24"<br>]</pre> | no |
| <a name="input_virtual_network_name"></a> [virtual\_network\_name](#input\_virtual\_network\_name) | The name of an existing Virtual Network. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_subnet_id"></a> [subnet\_id](#output\_subnet\_id) | WebTier Subnet ID |
| <a name="output_subnet_name"></a> [subnet\_name](#output\_subnet\_name) | WebTier Subnet Name |
| <a name="output_web_subnet_nsg_id"></a> [web\_subnet\_nsg\_id](#output\_web\_subnet\_nsg\_id) | WebTier Subnet NSG ID |
| <a name="output_web_subnet_nsg_name"></a> [web\_subnet\_nsg\_name](#output\_web\_subnet\_nsg\_name) | WebTier Subnet NSG Name |
<!-- END_TF_DOCS -->