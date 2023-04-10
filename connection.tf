# Create a Cloud Build v2 Connection to GitHub using a Token from Secret Manager
resource "google_cloudbuildv2_connection" "github" {
  provider = google-beta
  project  = var.project
  location = var.region
  name     = var.github_connection_name

  github_config {
    app_installation_id = var.github_app_installation_id
    authorizer_credential {
      oauth_token_secret_version = local.oauth_token_secret_version
    }
  }
}
