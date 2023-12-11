# Azure Kubernetes Service

[![Changelog](https://img.shields.io/badge/changelog-release-green.svg)](CHANGELOG.md) [![Notice](https://img.shields.io/badge/notice-copyright-yellow.svg)](NOTICE) [![Apache V2 License](https://img.shields.io/badge/license-Apache%20V2-orange.svg)](LICENSE) [![TF Registry](https://img.shields.io/badge/terraform-registry-blue.svg)](https://registry.terraform.io/modules/claranet/aci/azurerm/)

This module creates an Azure Kubernetes Service with diagnostic settings enabled.


## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | 1.4.6 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 3.82.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.82.0 |
| <a name="provider_azurerm.hub"></a> [azurerm.hub](#provider\_azurerm.hub) | 3.82.0 |
| <a name="provider_azurerm.management"></a> [azurerm.management](#provider\_azurerm.management) | 3.82.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_kubernetes_cluster.aks](https://registry.terraform.io/providers/hashicorp/azurerm/3.82.0/docs/resources/kubernetes_cluster) | resource |
| [azurerm_kubernetes_cluster_node_pool.user](https://registry.terraform.io/providers/hashicorp/azurerm/3.82.0/docs/resources/kubernetes_cluster_node_pool) | resource |
| [azurerm_monitor_diagnostic_setting.diag_aks](https://registry.terraform.io/providers/hashicorp/azurerm/3.82.0/docs/resources/monitor_diagnostic_setting) | resource |
| [azurerm_private_dns_zone_virtual_network_link.aks_vlink](https://registry.terraform.io/providers/hashicorp/azurerm/3.82.0/docs/resources/private_dns_zone_virtual_network_link) | resource |
| [azurerm_resource_group.aks_rg](https://registry.terraform.io/providers/hashicorp/azurerm/3.82.0/docs/resources/resource_group) | resource |
| [azurerm_role_assignment.dns_contributor](https://registry.terraform.io/providers/hashicorp/azurerm/3.82.0/docs/resources/role_assignment) | resource |
| [azurerm_role_assignment.monitoring](https://registry.terraform.io/providers/hashicorp/azurerm/3.82.0/docs/resources/role_assignment) | resource |
| [azurerm_role_assignment.network_contributor](https://registry.terraform.io/providers/hashicorp/azurerm/3.82.0/docs/resources/role_assignment) | resource |
| [azurerm_user_assigned_identity.aks_identity](https://registry.terraform.io/providers/hashicorp/azurerm/3.82.0/docs/resources/user_assigned_identity) | resource |
| [azurerm_user_assigned_identity.pod_identity](https://registry.terraform.io/providers/hashicorp/azurerm/3.82.0/docs/resources/user_assigned_identity) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/3.82.0/docs/data-sources/client_config) | data source |
| [azurerm_log_analytics_workspace.hub_law](https://registry.terraform.io/providers/hashicorp/azurerm/3.82.0/docs/data-sources/log_analytics_workspace) | data source |
| [azurerm_private_dns_zone.aks](https://registry.terraform.io/providers/hashicorp/azurerm/3.82.0/docs/data-sources/private_dns_zone) | data source |
| [azurerm_subnet.aks_subnet](https://registry.terraform.io/providers/hashicorp/azurerm/3.82.0/docs/data-sources/subnet) | data source |
| [azurerm_subnet.app_subnet](https://registry.terraform.io/providers/hashicorp/azurerm/3.82.0/docs/data-sources/subnet) | data source |
| [azurerm_virtual_network.hub_vnet](https://registry.terraform.io/providers/hashicorp/azurerm/3.82.0/docs/data-sources/virtual_network) | data source |
| [azurerm_virtual_network.spoke_vnet](https://registry.terraform.io/providers/hashicorp/azurerm/3.82.0/docs/data-sources/virtual_network) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aks_sku_tier"></a> [aks\_sku\_tier](#input\_aks\_sku\_tier) | SKU Tier of AKS Cluster | `string` | n/a | yes |
| <a name="input_aks_tags"></a> [aks\_tags](#input\_aks\_tags) | tags for AKS cluster | `map(string)` | n/a | yes |
| <a name="input_azure_default_tags"></a> [azure\_default\_tags](#input\_azure\_default\_tags) | Default Tags for all Resources | `map(string)` | n/a | yes |
| <a name="input_cluster_user_nodes"></a> [cluster\_user\_nodes](#input\_cluster\_user\_nodes) | Number of AKS Cluster User Nodes | `number` | n/a | yes |
| <a name="input_default_node_pool_enable_auto_scaling"></a> [default\_node\_pool\_enable\_auto\_scaling](#input\_default\_node\_pool\_enable\_auto\_scaling) | Enable auto scaling of Default Node Pool | `bool` | n/a | yes |
| <a name="input_default_node_pool_max_count"></a> [default\_node\_pool\_max\_count](#input\_default\_node\_pool\_max\_count) | Max count of Default Node Pool | `number` | n/a | yes |
| <a name="input_default_node_pool_min_count"></a> [default\_node\_pool\_min\_count](#input\_default\_node\_pool\_min\_count) | Min count of Default Node Pool | `number` | n/a | yes |
| <a name="input_default_node_pool_name"></a> [default\_node\_pool\_name](#input\_default\_node\_pool\_name) | Name of Default Node Pool | `string` | n/a | yes |
| <a name="input_default_node_pool_sku"></a> [default\_node\_pool\_sku](#input\_default\_node\_pool\_sku) | SKU of Default Node Pool | `string` | n/a | yes |
| <a name="input_default_node_zones"></a> [default\_node\_zones](#input\_default\_node\_zones) | Zone of Default Node Pool | `list(number)` | n/a | yes |
| <a name="input_dns_contributor"></a> [dns\_contributor](#input\_dns\_contributor) | Name of Private DNS Zone Contributor | `string` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | Name of Environment | `string` | n/a | yes |
| <a name="input_hub_subscription_id"></a> [hub\_subscription\_id](#input\_hub\_subscription\_id) | Subscription ID for Hub | `string` | n/a | yes |
| <a name="input_loc"></a> [loc](#input\_loc) | Name of Location | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | Name of Location | `string` | n/a | yes |
| <a name="input_log_analytics_workspace_name"></a> [log\_analytics\_workspace\_name](#input\_log\_analytics\_workspace\_name) | Name of Log Analytics workspace | `string` | n/a | yes |
| <a name="input_log_analytics_workspace_name_rg"></a> [log\_analytics\_workspace\_name\_rg](#input\_log\_analytics\_workspace\_name\_rg) | Name of Resource Group for Log Analytics workspace | `string` | n/a | yes |
| <a name="input_mangement_subscription_id"></a> [mangement\_subscription\_id](#input\_mangement\_subscription\_id) | Subscription ID for Management | `string` | n/a | yes |
| <a name="input_monitoring"></a> [monitoring](#input\_monitoring) | Name of Monitoring Metrics Publisher | `string` | n/a | yes |
| <a name="input_network_contributor"></a> [network\_contributor](#input\_network\_contributor) | Name of Network Contributor | `string` | n/a | yes |
| <a name="input_os_disk_type"></a> [os\_disk\_type](#input\_os\_disk\_type) | OS disk type of AKS Cluster | `string` | n/a | yes |
| <a name="input_os_sku"></a> [os\_sku](#input\_os\_sku) | OS SKU Tier of AKS Cluster | `string` | n/a | yes |
| <a name="input_podtype"></a> [podtype](#input\_podtype) | Name of Podtype | `string` | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | Name of Project | `string` | n/a | yes |
| <a name="input_pvt-dns-aks-name"></a> [pvt-dns-aks-name](#input\_pvt-dns-aks-name) | Name of Private DNS Zone for AKS Cluster | `string` | n/a | yes |
| <a name="input_pvt-dns-rg-name"></a> [pvt-dns-rg-name](#input\_pvt-dns-rg-name) | Name of Resource Group for Private DNS Zone | `string` | n/a | yes |
| <a name="input_type"></a> [type](#input\_type) | Name of Type | `string` | n/a | yes |
| <a name="input_user_node_pool_availability_zones"></a> [user\_node\_pool\_availability\_zones](#input\_user\_node\_pool\_availability\_zones) | list of availability zones for AKS Cluster node pool | `list(string)` | n/a | yes |
| <a name="input_user_node_pool_enable_auto_scaling"></a> [user\_node\_pool\_enable\_auto\_scaling](#input\_user\_node\_pool\_enable\_auto\_scaling) | Enable auto scaling of AKS cluster user node pool | `bool` | n/a | yes |
| <a name="input_user_node_pool_max_count"></a> [user\_node\_pool\_max\_count](#input\_user\_node\_pool\_max\_count) | Max count of AKS Cluster user node pool | `number` | n/a | yes |
| <a name="input_user_node_pool_max_pods"></a> [user\_node\_pool\_max\_pods](#input\_user\_node\_pool\_max\_pods) | Max pods of AKS Cluster user node pool | `number` | n/a | yes |
| <a name="input_user_node_pool_min_count"></a> [user\_node\_pool\_min\_count](#input\_user\_node\_pool\_min\_count) | Min count of AKS Cluster user node pool | `number` | n/a | yes |
| <a name="input_user_node_pool_node_count"></a> [user\_node\_pool\_node\_count](#input\_user\_node\_pool\_node\_count) | Node count of AKS Cluster user node pool | `number` | n/a | yes |
| <a name="input_user_node_pool_node_labels"></a> [user\_node\_pool\_node\_labels](#input\_user\_node\_pool\_node\_labels) | Node labels of AKS Cluster user node pool | `map(string)` | n/a | yes |
| <a name="input_user_node_pool_node_taints"></a> [user\_node\_pool\_node\_taints](#input\_user\_node\_pool\_node\_taints) | Node Taints of AKS Cluster user node pool | `list(string)` | n/a | yes |
| <a name="input_user_node_pool_os_disk_size_gb"></a> [user\_node\_pool\_os\_disk\_size\_gb](#input\_user\_node\_pool\_os\_disk\_size\_gb) | OS Disk Size in GB of AKS Cluster user node pool | `string` | n/a | yes |
| <a name="input_user_node_pool_os_disk_type"></a> [user\_node\_pool\_os\_disk\_type](#input\_user\_node\_pool\_os\_disk\_type) | OS Disk Type of AKS Cluster user node pool | `string` | n/a | yes |
| <a name="input_user_node_pool_os_type"></a> [user\_node\_pool\_os\_type](#input\_user\_node\_pool\_os\_type) | OS Type of AKS Cluster user node pool | `string` | n/a | yes |
| <a name="input_user_node_pool_priority"></a> [user\_node\_pool\_priority](#input\_user\_node\_pool\_priority) | Priority of AKS Cluster user node pool | `string` | n/a | yes |
| <a name="input_user_node_pool_vm_size"></a> [user\_node\_pool\_vm\_size](#input\_user\_node\_pool\_vm\_size) | VM Size of AKS Cluster user node pool | `string` | n/a | yes |
| <a name="input_vnet_hub_name"></a> [vnet\_hub\_name](#input\_vnet\_hub\_name) | Name of Hub Virtual Network | `string` | n/a | yes |
| <a name="input_vnet_hub_rg"></a> [vnet\_hub\_rg](#input\_vnet\_hub\_rg) | Name of Resource Group for Hub Virtual Network | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aks_name"></a> [aks\_name](#output\_aks\_name) | Name of AKS Cluster |
| <a name="output_aks_rg_name"></a> [aks\_rg\_name](#output\_aks\_rg\_name) | Name of AKS Reource Group |
| <a name="output_dns_contributor_name"></a> [dns\_contributor\_name](#output\_dns\_contributor\_name) | Name of DNS Contributor |
| <a name="output_monitoring_name"></a> [monitoring\_name](#output\_monitoring\_name) | Name of Monitering role |
| <a name="output_network_contributor_name"></a> [network\_contributor\_name](#output\_network\_contributor\_name) | Name of Network Contributor |
