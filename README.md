## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | 1.4.6 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 3.82.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.82.0 |
| <a name="provider_azurerm.management"></a> [azurerm.management](#provider\_azurerm.management) | 3.82.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_lb.kb_web_lb](https://registry.terraform.io/providers/hashicorp/azurerm/3.82.0/docs/resources/lb) | resource |
| [azurerm_lb.web_lb](https://registry.terraform.io/providers/hashicorp/azurerm/3.82.0/docs/resources/lb) | resource |
| [azurerm_lb_backend_address_pool.kb_web_lb_backend_address_pool](https://registry.terraform.io/providers/hashicorp/azurerm/3.82.0/docs/resources/lb_backend_address_pool) | resource |
| [azurerm_lb_backend_address_pool.web_lb_backend_address_pool](https://registry.terraform.io/providers/hashicorp/azurerm/3.82.0/docs/resources/lb_backend_address_pool) | resource |
| [azurerm_lb_probe.kb_web_lb_probe](https://registry.terraform.io/providers/hashicorp/azurerm/3.82.0/docs/resources/lb_probe) | resource |
| [azurerm_lb_probe.web_lb_probe](https://registry.terraform.io/providers/hashicorp/azurerm/3.82.0/docs/resources/lb_probe) | resource |
| [azurerm_lb_rule.kb_web_lb_rule_app1](https://registry.terraform.io/providers/hashicorp/azurerm/3.82.0/docs/resources/lb_rule) | resource |
| [azurerm_lb_rule.web_lb_rule_app1](https://registry.terraform.io/providers/hashicorp/azurerm/3.82.0/docs/resources/lb_rule) | resource |
| [azurerm_linux_virtual_machine.kb_vm](https://registry.terraform.io/providers/hashicorp/azurerm/3.82.0/docs/resources/linux_virtual_machine) | resource |
| [azurerm_linux_virtual_machine.vm](https://registry.terraform.io/providers/hashicorp/azurerm/3.82.0/docs/resources/linux_virtual_machine) | resource |
| [azurerm_managed_disk.disk](https://registry.terraform.io/providers/hashicorp/azurerm/3.82.0/docs/resources/managed_disk) | resource |
| [azurerm_managed_disk.kb_disk](https://registry.terraform.io/providers/hashicorp/azurerm/3.82.0/docs/resources/managed_disk) | resource |
| [azurerm_network_interface.kb_net_int](https://registry.terraform.io/providers/hashicorp/azurerm/3.82.0/docs/resources/network_interface) | resource |
| [azurerm_network_interface.net_int](https://registry.terraform.io/providers/hashicorp/azurerm/3.82.0/docs/resources/network_interface) | resource |
| [azurerm_network_interface_backend_address_pool_association.web_nic_es_lb_associate](https://registry.terraform.io/providers/hashicorp/azurerm/3.82.0/docs/resources/network_interface_backend_address_pool_association) | resource |
| [azurerm_network_interface_backend_address_pool_association.web_nic_lb_associate](https://registry.terraform.io/providers/hashicorp/azurerm/3.82.0/docs/resources/network_interface_backend_address_pool_association) | resource |
| [azurerm_resource_group.kb_rg](https://registry.terraform.io/providers/hashicorp/azurerm/3.82.0/docs/resources/resource_group) | resource |
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/3.82.0/docs/resources/resource_group) | resource |
| [azurerm_virtual_machine_data_disk_attachment.datadisk](https://registry.terraform.io/providers/hashicorp/azurerm/3.82.0/docs/resources/virtual_machine_data_disk_attachment) | resource |
| [azurerm_virtual_machine_data_disk_attachment.kb_datadisk](https://registry.terraform.io/providers/hashicorp/azurerm/3.82.0/docs/resources/virtual_machine_data_disk_attachment) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/3.82.0/docs/data-sources/client_config) | data source |
| [azurerm_log_analytics_workspace.manage_log_analytics](https://registry.terraform.io/providers/hashicorp/azurerm/3.82.0/docs/data-sources/log_analytics_workspace) | data source |
| [azurerm_ssh_public_key.ssh_key](https://registry.terraform.io/providers/hashicorp/azurerm/3.82.0/docs/data-sources/ssh_public_key) | data source |
| [azurerm_storage_account.log_storage](https://registry.terraform.io/providers/hashicorp/azurerm/3.82.0/docs/data-sources/storage_account) | data source |
| [azurerm_subnet.db_subnet](https://registry.terraform.io/providers/hashicorp/azurerm/3.82.0/docs/data-sources/subnet) | data source |
| [azurerm_virtual_network.spoke_vnet](https://registry.terraform.io/providers/hashicorp/azurerm/3.82.0/docs/data-sources/virtual_network) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_azure_default_tags"></a> [azure\_default\_tags](#input\_azure\_default\_tags) | Default Tags for all Resources | `map(string)` | n/a | yes |
| <a name="input_disk_size_gb"></a> [disk\_size\_gb](#input\_disk\_size\_gb) | Disk size in GB for Virtual machine | `number` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | Name of Environment | `string` | n/a | yes |
| <a name="input_es_lb_tags"></a> [es\_lb\_tags](#input\_es\_lb\_tags) | Tags for Elastic search LB | `map(string)` | n/a | yes |
| <a name="input_es_vm_size"></a> [es\_vm\_size](#input\_es\_vm\_size) | vm size  for Elastic search Virtual machine | `string` | n/a | yes |
| <a name="input_es_vm_tags"></a> [es\_vm\_tags](#input\_es\_vm\_tags) | Tags for Elastic search VM | `map(string)` | n/a | yes |
| <a name="input_escount"></a> [escount](#input\_escount) | Number of Elastic Search | `number` | n/a | yes |
| <a name="input_esport"></a> [esport](#input\_esport) | Port of Elastic Search | `number` | n/a | yes |
| <a name="input_estype"></a> [estype](#input\_estype) | Type of Elastic Search | `string` | n/a | yes |
| <a name="input_hub_subscription_id"></a> [hub\_subscription\_id](#input\_hub\_subscription\_id) | Subscription ID for Hub | `string` | n/a | yes |
| <a name="input_kb_disk_size_gb"></a> [kb\_disk\_size\_gb](#input\_kb\_disk\_size\_gb) | Disk size in GB for  Kibana Virtual machine | `number` | n/a | yes |
| <a name="input_kb_lb_tags"></a> [kb\_lb\_tags](#input\_kb\_lb\_tags) | Tags for Kibana LB | `map(string)` | n/a | yes |
| <a name="input_kb_vm_size"></a> [kb\_vm\_size](#input\_kb\_vm\_size) | vm size  for Kibana Virtual machine | `string` | n/a | yes |
| <a name="input_kb_vm_tags"></a> [kb\_vm\_tags](#input\_kb\_vm\_tags) | Tags for Kibana VM | `map(string)` | n/a | yes |
| <a name="input_kbcount"></a> [kbcount](#input\_kbcount) | Number of Kibana | `number` | n/a | yes |
| <a name="input_kbport"></a> [kbport](#input\_kbport) | Port of Kibana | `number` | n/a | yes |
| <a name="input_kbtype"></a> [kbtype](#input\_kbtype) | Type of Kibana | `string` | n/a | yes |
| <a name="input_key_name"></a> [key\_name](#input\_key\_name) | Name of SSh Key | `string` | n/a | yes |
| <a name="input_lb_allocation_method"></a> [lb\_allocation\_method](#input\_lb\_allocation\_method) | Name of allocation method for Load Balancer | `string` | n/a | yes |
| <a name="input_lb_sku"></a> [lb\_sku](#input\_lb\_sku) | Name of SKU for Load Balancer | `string` | n/a | yes |
| <a name="input_loc"></a> [loc](#input\_loc) | Name of Location | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | Name of Location | `string` | n/a | yes |
| <a name="input_log_analytics_workspace_name"></a> [log\_analytics\_workspace\_name](#input\_log\_analytics\_workspace\_name) | Name of Log Analytics workspace | `string` | n/a | yes |
| <a name="input_log_analytics_workspace_name_rg"></a> [log\_analytics\_workspace\_name\_rg](#input\_log\_analytics\_workspace\_name\_rg) | Name of Resource Group for Log Analytics workspace | `string` | n/a | yes |
| <a name="input_mangement_subscription_id"></a> [mangement\_subscription\_id](#input\_mangement\_subscription\_id) | Subscription ID for Management | `string` | n/a | yes |
| <a name="input_offer"></a> [offer](#input\_offer) | Offer of Virtual machine | `string` | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | Name of Project | `string` | n/a | yes |
| <a name="input_protocol"></a> [protocol](#input\_protocol) | Name of protocol for Load Balancer | `string` | n/a | yes |
| <a name="input_publisher"></a> [publisher](#input\_publisher) | Publisher of Virtual machine | `string` | n/a | yes |
| <a name="input_storage_account_type"></a> [storage\_account\_type](#input\_storage\_account\_type) | Type of Storage Account for Load Balancer | `string` | n/a | yes |
| <a name="input_username"></a> [username](#input\_username) | Username for Virtual machine | `string` | n/a | yes |
| <a name="input_vm_sku"></a> [vm\_sku](#input\_vm\_sku) | SKU of Virtual machine | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_es_lb_name"></a> [es\_lb\_name](#output\_es\_lb\_name) | Name of Elastic search lb |
| <a name="output_es_rg_name"></a> [es\_rg\_name](#output\_es\_rg\_name) | Name of Elastic search rg |
| <a name="output_es_vm_names"></a> [es\_vm\_names](#output\_es\_vm\_names) | Name of Elastic search vms |
| <a name="output_kb_lb_name"></a> [kb\_lb\_name](#output\_kb\_lb\_name) | Name of Kibana lb |
| <a name="output_kb_rg_name"></a> [kb\_rg\_name](#output\_kb\_rg\_name) | Name of Kibana rg |
| <a name="output_kb_vm_names"></a> [kb\_vm\_names](#output\_kb\_vm\_names) | Name of Kibana vms |

