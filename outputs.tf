output "id" {
  value       = tfe_registry_module.default.id
  description = "The ID of the registry module"
}

output "module_provider" {
  value       = tfe_registry_module.default.module_provider
  description = "The provider of the registry module"
}

output "name" {
  value       = tfe_registry_module.default.name
  description = "The name of registry module"
}

output "organization" {
  value       = tfe_registry_module.default.organization
  description = "The name of the organization associated with the registry module"
}
