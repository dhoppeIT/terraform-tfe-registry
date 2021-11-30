resource "tfe_registry_module" "default" {
  vcs_repo {
    display_identifier = var.display_identifier
    identifier         = var.identifier
    oauth_token_id     = var.oauth_token_id
  }
}
