# terraform-tfe-registry

Terraform module to manage the Terraform Cloud/Enterprise resource
(tfe_registry_module).

## Graph

![Graph](https://github.com/dhoppeIT/terraform-tfe-registry/blob/main/rover.png)

## Usage

Copy and paste into your Terraform configuration, insert the variables and run ```terraform init```:

```hcl
module "tfe-organization" {
  source = "dhoppeIT/organization/tfe"

  name  = "dhoppeIT"
  email = "terraform@dhoppe.it"
}

module "tfe-oauth_client" {
  source = "dhoppeIT/oauth_client/tfe"

  organization     = module.tfe-organization.name
  api_url          = "https://api.github.com"
  http_url         = "https://github.com"
  oauth_token      = "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"
  service_provider = "github"
}

module "tfe-registry" {
  source = "dhoppeIT/registry/tfe"

  display_identifier = "dhoppeIT/terraform-tfe-registry"
  identifier         = "dhoppeIT/terraform-tfe-registry"
  oauth_token_id     =  module.tfe-oauth_client.oauth_token_id
}
```

<!--- BEGIN_TF_DOCS --->
<!--- END_TF_DOCS --->

## Authors

Created and maintained by [Dennis Hoppe](https://github.com/dhoppeIT/).

## License

Apache 2 licensed. See [LICENSE](https://github.com/dhoppeIT/terraform-tfe-registry/blob/main/LICENSE) for full details.
