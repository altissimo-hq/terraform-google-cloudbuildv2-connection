variable "create_secret" {
  description = "Whether to create the GitHub OAuth Token Secret"
  type        = bool
  default     = false
}

variable "github_app_installation_id" {
  description = <<-END
    Installation ID for the Cloud Build GitHub App

    For personal accounts, go to https://github.com/settings/installations
    and click on the Cloud Build app. Retrieve the installation ID from the URL.

    For organization accounts, go to
    https://github.com/organizations/[ORGANIZATION]/settings/installations
    and click on the Cloud Build app. Retrieve the installation ID from the URL.
  END
  type        = number
}

variable "github_connection_name" {
  description = "Name of the Cloud Build v2 Connection to GitHub"
  type        = string
  default     = "github"
}

variable "github_login" {
  description = "GitHub login of the user or organization that owns the repositories"
  type        = string
}

variable "oauth_token_secret" {
  description = "Name of the GitHub OAuth Token Secret"
  type        = string
  default     = "github-token"
}

variable "oauth_token_secret_version" {
  description = "Secret Version ID of the GitHub OAuth Token"
  type        = string
  default     = "latest"
}

variable "project" {
  description = "Google Project ID in which to create the Cloud Build resources"
  type        = string
}

variable "region" {
  description = "Region of the Cloud Build v2 Connection to GitHub"
  type        = string
  default     = "us-central1"
}

variable "repositories" {
  description = "List of GitHub repositories to create Cloud Build v2 Repositories for"
  type        = list(string)
  default     = []
}

variable "secret_project" {
  description = "Google Project ID in which the GitHub OAuth Token Secret is stored"
  type        = string
  default     = null
}
