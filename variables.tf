variable "display_identifier" {
  type        = string
  default     = null
  description = "The display identifier for your VCS repository"
}

variable "identifier" {
  type        = string
  default     = null
  description = "A reference to your VCS repository in the format <organization>/<repository>"
}

variable "oauth_token_id" {
  type        = string
  default     = null
  description = "Token ID of the VCS Connection (OAuth Connection Token) to use"
}
