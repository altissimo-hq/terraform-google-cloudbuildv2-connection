locals {

  # Full path to the Secret Manager Secret Version
  oauth_token_secret_version = "projects/${local.secret_project}/secrets/${var.oauth_token_secret}/versions/${var.oauth_token_secret_version}"

  # Project ID in which the GitHub OAuth Token Secret is stored
  secret_project = coalesce(var.secret_project, var.project)
  # Use the provider region unless passed in as a variable
  region = coalesce(var.region, data.google_client_config.current.region)

}
