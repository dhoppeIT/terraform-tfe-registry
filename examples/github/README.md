# terraform-tfe-registry

This example will manage the Terraform Cloud/Enterprise module registry to share
Terraform modules across your organization.

## Graph

<img alt="Graph" src="https://github.com/dhoppeIT/terraform-tfe-registry/blob/main/examples/github/rover.svg?raw=true" width="100%" height="100%">

## Usage

To run this example, you need to execute the following commands:

```shell
$ terraform init
$ terraform plan
$ terraform apply
```

:warning: This example may create resources that cost money. Execute the command
`terraform destroy` when the resources are no longer needed.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | ~> 0.26 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_tfe_oauth_client"></a> [tfe\_oauth\_client](#module\_tfe\_oauth\_client) | dhoppeIT/oauth_client/tfe | ~> 0.2 |
| <a name="module_tfe_organization"></a> [tfe\_organization](#module\_tfe\_organization) | dhoppeIT/organization/tfe | ~> 0.1 |
| <a name="module_tfe_registry"></a> [tfe\_registry](#module\_tfe\_registry) | dhoppeIT/registry/tfe | ~> 0.1 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_token"></a> [token](#input\_token) | The token used to authenticate with Terraform Cloud/Enterprise | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_registry_id"></a> [registry\_id](#output\_registry\_id) | The ID of the registry module |
| <a name="output_registry_module_provider"></a> [registry\_module\_provider](#output\_registry\_module\_provider) | The provider of the registry module |
| <a name="output_registry_name"></a> [registry\_name](#output\_registry\_name) | The name of registry module |
| <a name="output_registry_organization"></a> [registry\_organization](#output\_registry\_organization) | The name of the organization associated with the registry module |

<!-- END_TF_DOCS -->

## Authors

Created and maintained by [Dennis Hoppe](https://github.com/dhoppeIT/).

## License

Apache 2 licensed. See [LICENSE](https://github.com/dhoppeIT/terraform-tfe-registry/blob/main/LICENSE) for full details.
