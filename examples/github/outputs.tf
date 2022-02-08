output "registry_id" {
  value       = module.tfe_registry.id
  description = "The ID of the registry module"
}

output "registry_module_provider" {
  value       = module.tfe_registry.module_provider
  description = "The provider of the registry module"
}

output "registry_name" {
  value       = module.tfe_registry.name
  description = "The name of registry module"
}

output "registry_organization" {
  value       = module.tfe_registry.organization
  description = "The name of the organization associated with the registry module"
}
