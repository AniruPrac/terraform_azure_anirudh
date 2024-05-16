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
| [azurerm_storage_account.main](https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/storage_account) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_application_name"></a> [application\_name](#input\_application\_name) | The application name that this storage account belongs to | `string` | `"N/A"` | no |
| <a name="input_business_divsion"></a> [business\_divsion](#input\_business\_divsion) | Business Division | `string` | n/a | yes |
| <a name="input_enable_hns"></a> [enable\_hns](#input\_enable\_hns) | Enable the HNS feature of Storage Account | `bool` | `false` | no |
| <a name="input_enable_https_traffic_only"></a> [enable\_https\_traffic\_only](#input\_enable\_https\_traffic\_only) | (Optional) Boolean flag which forces HTTPS if enabled, see here for more information. Defaults to true. | `string` | `"true"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment Ex: Dev, QA, etc. | `string` | n/a | yes |
| <a name="input_index"></a> [index](#input\_index) | When more than one storage acccount is needed in a resource group this index number can be used. | `string` | `""` | no |
| <a name="input_location"></a> [location](#input\_location) | n/a | `string` | `"northcentralus"` | no |
| <a name="input_minimum_tls_version"></a> [minimum\_tls\_version](#input\_minimum\_tls\_version) | n/a | `string` | `"TLS1_2"` | no |
| <a name="input_owner"></a> [owner](#input\_owner) | The owner of the storage account | `string` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | The project name that this storage account belongs to | `string` | `"N/A"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | (Required) The name of an existing resource group for the storage account. When the variable name is left empty, than the resource group name must be in the K&E naming format. | `string` | `""` | no |
| <a name="input_retention_days"></a> [retention\_days](#input\_retention\_days) | The number of days to retain data that is deleted | `number` | `7` | no |
| <a name="input_storage_account_kind"></a> [storage\_account\_kind](#input\_storage\_account\_kind) | (Optional) Defines the Kind of account. Valid options are BlobStorage, BlockBlobStorage, FileStorage, Storage and StorageV2. Changing this forces a new resource to be created. Defaults to StorageV2 | `string` | `"StorageV2"` | no |
| <a name="input_storage_account_name"></a> [storage\_account\_name](#input\_storage\_account\_name) | (Optional) The name of the storage account. When the variable name is left empty, than the storage account name must be in the K&E naming format. | `string` | `""` | no |
| <a name="input_storage_account_replication_type"></a> [storage\_account\_replication\_type](#input\_storage\_account\_replication\_type) | (Required) Defines the type of replication to use for this storage account. Valid options are LRS*, GRS, RAGRS and ZRS. | `string` | `"LRS"` | no |
| <a name="input_storage_account_tier"></a> [storage\_account\_tier](#input\_storage\_account\_tier) | (Required) Defines the Tier to use for this storage account. Valid options are Standard* and Premium. Changing this forces a new resource to be created | `string` | `"Standard"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_storage_account_id"></a> [storage\_account\_id](#output\_storage\_account\_id) | n/a |
| <a name="output_storage_account_name"></a> [storage\_account\_name](#output\_storage\_account\_name) | n/a |
<!-- END_TF_DOCS -->