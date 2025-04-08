<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_zstack"></a> [zstack](#requirement\_zstack) | 1.0.5 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_zstack"></a> [zstack](#provider\_zstack) | 1.0.5 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_esxi_image"></a> [esxi\_image](#module\_esxi\_image) | git::http://172.20.14.17/jiajian.chi/terraform-zstack-image.git | n/a |

## Resources

| Name | Type |
|------|------|
| [zstack_instance.esxi](https://registry.terraform.io/providers/ZStack-Robot/zstack/1.0.5/docs/resources/instance) | resource |
| [zstack_instance_offers.offers](https://registry.terraform.io/providers/ZStack-Robot/zstack/1.0.5/docs/data-sources/instance_offers) | data source |
| [zstack_l3networks.l3networks](https://registry.terraform.io/providers/ZStack-Robot/zstack/1.0.5/docs/data-sources/l3networks) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_backup_storage_name"></a> [backup\_storage\_name](#input\_backup\_storage\_name) | Name of the backup storage where the image will be stored | `string` | `"bs"` | no |
| <a name="input_context"></a> [context](#input\_context) | Receive contextual information. When Walrus deploys, Walrus will inject specific contextual information into this field.<br/><br/>Examples:<pre>context:<br/>  project:<br/>    name: string<br/>    id: string<br/>  environment:<br/>    name: string<br/>    id: string<br/>  resource:<br/>    name: string<br/>    id: string</pre> | `map(any)` | `{}` | no |
| <a name="input_description"></a> [description](#input\_description) | Description of the instance | `string` | `""` | no |
| <a name="input_esxi_image_name"></a> [esxi\_image\_name](#input\_esxi\_image\_name) | The name of the ESXi image to be created | `string` | n/a | yes |
| <a name="input_esxi_iso_url"></a> [esxi\_iso\_url](#input\_esxi\_iso\_url) | The URL of the ESXi ISO image | `string` | n/a | yes |
| <a name="input_instance_name"></a> [instance\_name](#input\_instance\_name) | Name of the instance to be created | `string` | n/a | yes |
| <a name="input_instance_offering_name"></a> [instance\_offering\_name](#input\_instance\_offering\_name) | Name of the instance offering | `string` | `"min"` | no |
| <a name="input_instance_offering_uuid"></a> [instance\_offering\_uuid](#input\_instance\_offering\_uuid) | UUID of the instance offering (used if name is not provided) | `string` | `""` | no |
| <a name="input_l3_network_name"></a> [l3\_network\_name](#input\_l3\_network\_name) | Name of the L3 network to attach the instance | `string` | `"test"` | no |
| <a name="input_l3_network_uuids"></a> [l3\_network\_uuids](#input\_l3\_network\_uuids) | UUIDs of L3 networks (used if l3\_network\_name is not provided) | `list(string)` | `[]` | no |
| <a name="input_never_stop"></a> [never\_stop](#input\_never\_stop) | Whether the instance should never stop | `bool` | `true` | no |
| <a name="input_root_disk_size"></a> [root\_disk\_size](#input\_root\_disk\_size) | Size of the root disk in GB | `number` | `100` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_esxi_endpoint"></a> [esxi\_endpoint](#output\_esxi\_endpoint) | List of IPs of the created ESXi instance |
| <a name="output_esxi_instance_ip"></a> [esxi\_instance\_ip](#output\_esxi\_instance\_ip) | IP of the created ESXi instance |
| <a name="output_walrus_environment_id"></a> [walrus\_environment\_id](#output\_walrus\_environment\_id) | The id of environment where deployed in Walrus. |
| <a name="output_walrus_environment_name"></a> [walrus\_environment\_name](#output\_walrus\_environment\_name) | The name of environment where deployed in Walrus. |
| <a name="output_walrus_project_id"></a> [walrus\_project\_id](#output\_walrus\_project\_id) | The id of project where deployed in Walrus. |
| <a name="output_walrus_project_name"></a> [walrus\_project\_name](#output\_walrus\_project\_name) | The name of project where deployed in Walrus. |
| <a name="output_walrus_resource_id"></a> [walrus\_resource\_id](#output\_walrus\_resource\_id) | The id of resource where deployed in Walrus. |
| <a name="output_walrus_resource_name"></a> [walrus\_resource\_name](#output\_walrus\_resource\_name) | The name of resource where deployed in Walrus. |
<!-- END_TF_DOCS -->