# Create Cloud Build v2 Repositories
resource "google_cloudbuildv2_repository" "repositories" {
  for_each = toset(var.repositories)
  provider = google-beta
  name     = each.key
  project  = var.project
  location = var.region

  parent_connection = google_cloudbuildv2_connection.github.name
  remote_uri        = "https://github.com/${var.github_login}/${each.key}.git"
}
