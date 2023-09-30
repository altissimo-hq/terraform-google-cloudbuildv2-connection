# Create the Secret Manager Secret, if create_secret is true
resource "google_secret_manager_secret" "github_auth_token" {
  count     = var.create_secret ? 1 : 0
  project   = local.secret_project
  secret_id = var.oauth_token_secret

  replication {
    automatic = true
  }

  labels = {
    created-by       = "terraform"
    publisher        = "altissimo-hq"
    terraform-module = "terraform-google-cloudbuildv2-connection"
    service          = "github"
    type             = "oauth-token"
  }
}

# Retreive the Project ID of the Cloud Build Service Acccount
data "google_project" "project" {
  project_id = var.project
}

# Grant the Cloud Build Service Account access to the Secret Manager Secret
resource "google_secret_manager_secret_iam_member" "clouduild_github_auth_token" {
  count     = var.create_secret ? 1 : 0
  project   = google_secret_manager_secret.github_auth_token[0].project
  secret_id = google_secret_manager_secret.github_auth_token[0].secret_id
  role      = "roles/secretmanager.secretAccessor"
  member    = "serviceAccount:service-${data.google_project.project.number}@gcp-sa-cloudbuild.iam.gserviceaccount.com"
}

# Retrieve the value of the Secret Manager Secret Version
data "google_secret_manager_secret_version" "github_auth_token" {
  count   = var.create_secret ? 1 : 0
  project = local.secret_project
  secret  = google_secret_manager_secret.github_auth_token[0].secret_id
}
