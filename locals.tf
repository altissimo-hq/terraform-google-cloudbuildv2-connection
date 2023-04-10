locals {

  # Full path to the Secret Manager Secret Version
  oauth_token_secret_version = "projects/${local.secret_project}/secrets/${var.oauth_token_secret}/versions/${var.oauth_token_secret_version}"

  # Project ID in which the GitHub OAuth Token Secret is stored
  secret_project = coalesce(var.secret_project, var.project)

}