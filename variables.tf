variable "display_identifier" {
  type        = string
  description = "The display identifier for your VCS repository"
}

variable "identifier" {
  type        = string
  description = "A reference to your VCS repository in the format <organization>/<repository>"
}

variable "oauth_token_id" {
  type        = string
  description = "Token ID of the VCS Connection (OAuth Connection Token) to use"
}
