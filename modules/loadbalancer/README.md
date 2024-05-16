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
| [azurerm_lb.main](https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/lb) | resource |
| [azurerm_lb_backend_address_pool.main](https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/lb_backend_address_pool) | resource |
| [azurerm_lb_probe.main](https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/lb_probe) | resource |
| [azurerm_lb_rule.ext1](https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/lb_rule) | resource |
| [azurerm_lb_rule.ext2](https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/lb_rule) | resource |
| [azurerm_public_ip.main](https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/public_ip) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_BackEndAddressPool_name"></a> [BackEndAddressPool\_name](#input\_BackEndAddressPool\_name) | Name of the backend address pool | `string` | n/a | yes |
| <a name="input_application_name"></a> [application\_name](#input\_application\_name) | The application name that this storage account belongs to | `string` | `"N/A"` | no |
| <a name="input_backend_port"></a> [backend\_port](#input\_backend\_port) | Backend port for the load balancing rule | `number` | n/a | yes |
| <a name="input_backend_port_2"></a> [backend\_port\_2](#input\_backend\_port\_2) | Backend port for the load balancing rule | `number` | n/a | yes |
| <a name="input_disable_outbound_snat"></a> [disable\_outbound\_snat](#input\_disable\_outbound\_snat) | Disable outbound SNAT for the load balancing rule | `bool` | n/a | yes |
| <a name="input_disable_outbound_snat_2"></a> [disable\_outbound\_snat\_2](#input\_disable\_outbound\_snat\_2) | Disable outbound SNAT for the load balancing rule | `bool` | n/a | yes |
| <a name="input_enable_floating_ip"></a> [enable\_floating\_ip](#input\_enable\_floating\_ip) | Enable floating IP for the load balancing rule | `bool` | n/a | yes |
| <a name="input_enable_floating_ip_2"></a> [enable\_floating\_ip\_2](#input\_enable\_floating\_ip\_2) | Enable floating IP for the load balancing rule | `bool` | n/a | yes |
| <a name="input_enable_tcp_reset"></a> [enable\_tcp\_reset](#input\_enable\_tcp\_reset) | Enable TCP reset for the load balancing rule | `bool` | n/a | yes |
| <a name="input_enable_tcp_reset_2"></a> [enable\_tcp\_reset\_2](#input\_enable\_tcp\_reset\_2) | Enable TCP reset for the load balancing rule | `bool` | n/a | yes |
| <a name="input_frontend_ip_configuration_name"></a> [frontend\_ip\_configuration\_name](#input\_frontend\_ip\_configuration\_name) | Name of the frontend IP configuration | `string` | n/a | yes |
| <a name="input_frontend_port"></a> [frontend\_port](#input\_frontend\_port) | Frontend port for the load balancing rule | `number` | n/a | yes |
| <a name="input_frontend_port_2"></a> [frontend\_port\_2](#input\_frontend\_port\_2) | Frontend port for the load balancing rule | `number` | n/a | yes |
| <a name="input_idle_timeout_in_minutes"></a> [idle\_timeout\_in\_minutes](#input\_idle\_timeout\_in\_minutes) | Idle timeout in minutes for the load balancing rule | `number` | n/a | yes |
| <a name="input_idle_timeout_in_minutes_2"></a> [idle\_timeout\_in\_minutes\_2](#input\_idle\_timeout\_in\_minutes\_2) | Idle timeout in minutes for the load balancing rule | `number` | n/a | yes |
| <a name="input_interval_in_seconds"></a> [interval\_in\_seconds](#input\_interval\_in\_seconds) | Interval in seconds between health probes | `number` | n/a | yes |
| <a name="input_lb_name"></a> [lb\_name](#input\_lb\_name) | (Required) Specifies the name of the Load Balancer. Changing this forces a new resource to be created. | `string` | `""` | no |
| <a name="input_lb_rule_name"></a> [lb\_rule\_name](#input\_lb\_rule\_name) | Name of the load balancing rule | `string` | n/a | yes |
| <a name="input_lb_rule_name_2"></a> [lb\_rule\_name\_2](#input\_lb\_rule\_name\_2) | Name of the load balancing rule | `string` | n/a | yes |
| <a name="input_lb_sku"></a> [lb\_sku](#input\_lb\_sku) | SKU (pricing tier) for the load balancer | `string` | n/a | yes |
| <a name="input_load_distribution"></a> [load\_distribution](#input\_load\_distribution) | Load distribution algorithm for the load balancing rule | `string` | n/a | yes |
| <a name="input_load_distribution_2"></a> [load\_distribution\_2](#input\_load\_distribution\_2) | Load distribution algorithm for the load balancing rule | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | n/a | `string` | `"northcentralus"` | no |
| <a name="input_number_of_probes"></a> [number\_of\_probes](#input\_number\_of\_probes) | Number of consecutive health probe failures before considering the backend unhealthy | `number` | n/a | yes |
| <a name="input_owner"></a> [owner](#input\_owner) | The owner of the storage account | `string` | n/a | yes |
| <a name="input_port"></a> [port](#input\_port) | Port number used for health probes | `number` | n/a | yes |
| <a name="input_probe_name"></a> [probe\_name](#input\_probe\_name) | Name of the health probe | `string` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | The project name that this storage account belongs to | `string` | `"N/A"` | no |
| <a name="input_protocol"></a> [protocol](#input\_protocol) | Protocol used for the load balancing rule | `string` | n/a | yes |
| <a name="input_protocol_2"></a> [protocol\_2](#input\_protocol\_2) | Protocol used for the load balancing rule | `string` | n/a | yes |
| <a name="input_public_ip_address_id"></a> [public\_ip\_address\_id](#input\_public\_ip\_address\_id) | ID of the public IP address associated with the frontend IP configuration | `string` | n/a | yes |
| <a name="input_public_ip_allocation_method"></a> [public\_ip\_allocation\_method](#input\_public\_ip\_allocation\_method) | Public Ip allocation method | `string` | `"Static"` | no |
| <a name="input_public_ip_sku"></a> [public\_ip\_sku](#input\_public\_ip\_sku) | Public Ip Sku | `string` | `"Standard"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | (Required) The name of an existing resource group for the storage account. When the variable name is left empty, than the resource group name must be in the K&E naming format. | `string` | `""` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to add to all resources | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_backend_address_pool_id"></a> [backend\_address\_pool\_id](#output\_backend\_address\_pool\_id) | ID of the created backend address pool |
| <a name="output_lb_rule_ids"></a> [lb\_rule\_ids](#output\_lb\_rule\_ids) | IDs of the created load balancing rules |
| <a name="output_load_balancer_id"></a> [load\_balancer\_id](#output\_load\_balancer\_id) | ID of the created Azure Load Balancer |
| <a name="output_probe_id"></a> [probe\_id](#output\_probe\_id) | ID of the created probe |
<!-- END_TF_DOCS -->