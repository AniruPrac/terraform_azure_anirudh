<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | =3.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | =3.0.0 |
| <a name="provider_random"></a> [random](#provider\_random) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_linux_virtual_machine_scale_set.main](https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/linux_virtual_machine_scale_set) | resource |
| [azurerm_managed_disk.main](https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/managed_disk) | resource |
| [azurerm_network_security_group.web_vmss_nsg](https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/network_security_group) | resource |
| [azurerm_virtual_machine_data_disk_attachment.example](https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/virtual_machine_data_disk_attachment) | resource |
| [random_id.number](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/id) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_admin_password"></a> [admin\_password](#input\_admin\_password) | (Required) Local admin password | `string` | n/a | yes |
| <a name="input_admin_username"></a> [admin\_username](#input\_admin\_username) | (Required) The username of the local administrator on each Virtual Machine Scale Set instance. Changing this forces a new resource to be created. | `string` | `""` | no |
| <a name="input_application_name"></a> [application\_name](#input\_application\_name) | The application name that this storage account belongs to | `string` | `"app"` | no |
| <a name="input_business_divsion"></a> [business\_divsion](#input\_business\_divsion) | Business Division | `string` | `"vertical"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment Ex: Dev, QA, etc. | `string` | n/a | yes |
| <a name="input_image_offer"></a> [image\_offer](#input\_image\_offer) | (Required) Specifies the offer of the image used to create the virtual machines. Changing this forces a new resource to be created. | `string` | `""` | no |
| <a name="input_image_publisher"></a> [image\_publisher](#input\_image\_publisher) | (Required) Specifies the publisher of the image used to create the virtual machines. Changing this forces a new resource to be created. | `string` | `"Canonical"` | no |
| <a name="input_image_sku"></a> [image\_sku](#input\_image\_sku) | (Required) Specifies the SKU of the image used to create the virtual machines. | `string` | `""` | no |
| <a name="input_image_version"></a> [image\_version](#input\_image\_version) | (Required) Specifies the version of the image used to create the virtual machines. | `string` | `""` | no |
| <a name="input_location"></a> [location](#input\_location) | (Required) Location of resource group to be created | `string` | `""` | no |
| <a name="input_owner"></a> [owner](#input\_owner) | The owner of the storage account | `string` | `"Anirudh"` | no |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | The project name that this storage account belongs to | `string` | `"ProjectK"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | (Required) Name of resource group | `string` | `""` | no |
| <a name="input_sku"></a> [sku](#input\_sku) | (Required) )The Virtual Machine SKU for the Scale Set, such as Standard\_F2 | `string` | `""` | no |
| <a name="input_storage_account_type"></a> [storage\_account\_type](#input\_storage\_account\_type) | (Optional) Storage Account type for os disk and managed disk | `string` | `"Standard_LRS"` | no |
| <a name="input_vmss_name"></a> [vmss\_name](#input\_vmss\_name) | (Required) Name of Virtual Machine scale set | `string` | `""` | no |
| <a name="input_web_vmss_nsg_inbound_ports"></a> [web\_vmss\_nsg\_inbound\_ports](#input\_web\_vmss\_nsg\_inbound\_ports) | Web VMSS NSG Inbound Ports | `list(string)` | <pre>[<br>  22,<br>  80,<br>  443<br>]</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_azurerm_linux_virtual_machine_scale_set_name"></a> [azurerm\_linux\_virtual\_machine\_scale\_set\_name](#output\_azurerm\_linux\_virtual\_machine\_scale\_set\_name) | n/a |
<!-- END_TF_DOCS -->