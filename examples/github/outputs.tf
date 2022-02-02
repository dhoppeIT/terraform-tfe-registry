output "registry_id" {
  value       = try(module.tfe_registry.id, null)
  description = "The ID of the registry module"
}

output "registry_module_provider" {
  value       = try(module.tfe_registry.module_provider, null)
  description = "The provider of the registry module"
}

output "registry_name" {
  value       = try(module.tfe_registry.name, null)
  description = "The name of registry module"
}

output "registry_organization" {
  value       = try(module.tfe_registry.organization, null)
  description = "The name of the organization associated with the registry module"
}
