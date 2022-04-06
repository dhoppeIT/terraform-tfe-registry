# terraform-tfe-registry

Terraform module to manage the following Terraform Cloud/Enterprise resource:

* tfe_registry_module

## Graph

<img alt="Graph" src="https://github.com/dhoppeIT/terraform-tfe-registry/blob/main/rover.svg?raw=true" width="100%" height="100%">

## Usage

Copy and paste into your Terraform configuration, insert the variables and run ```terraform init```:

```hcl
module "tfe_organization" {
  source  = "dhoppeIT/organization/tfe"
  version = "~> 0.1"

  name  = "dhoppeIT"
  email = "terraform@dhoppe.it"
}

module "tfe_oauth_client" {
  source  = "dhoppeIT/oauth_client/tfe"
  version = "~> 0.2"

  organization     = module.tfe_organization.name
  api_url          = "https://api.github.com"
  http_url         = "https://github.com"
  oauth_token      = "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"
  service_provider = "github"
}

module "tfe_registry" {
  source  = "dhoppeIT/registry/tfe"
  version = "~> 0.1"

  display_identifier = "dhoppeIT/terraform-tfe-registry"
  identifier         = "dhoppeIT/terraform-tfe-registry"
  oauth_token_id     = module.tfe_oauth_client.oauth_token_id
}
```

<!--- BEGIN_TF_DOCS --->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | ~> 0.26 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | 0.30.2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [tfe_registry_module.default](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/registry_module) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_display_identifier"></a> [display\_identifier](#input\_display\_identifier) | The display identifier for your VCS repository | `string` | n/a | yes |
| <a name="input_identifier"></a> [identifier](#input\_identifier) | A reference to your VCS repository in the format <organization>/<repository> | `string` | n/a | yes |
| <a name="input_oauth_token_id"></a> [oauth\_token\_id](#input\_oauth\_token\_id) | Token ID of the VCS Connection (OAuth Connection Token) to use | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the registry module |
| <a name="output_module_provider"></a> [module\_provider](#output\_module\_provider) | The provider of the registry module |
| <a name="output_name"></a> [name](#output\_name) | The name of registry module |
| <a name="output_organization"></a> [organization](#output\_organization) | The name of the organization associated with the registry module |

<!--- END_TF_DOCS --->

## Authors

Created and maintained by [Dennis Hoppe](https://github.com/dhoppeIT/).

## License

Apache 2 licensed. See [LICENSE](https://github.com/dhoppeIT/terraform-tfe-registry/blob/main/LICENSE) for full details.
