output "oauth_token_secret_version" {
  description = "Secret Version ID of the GitHub OAuth Token"
  value       = local.oauth_token_secret_version
}

output "repository_ids" {
  description = "Map of Cloud Build v2 Repositories"
  value = {for repo in google_cloudbuildv2_repository.repositories : repo.name => repo.id}
}
