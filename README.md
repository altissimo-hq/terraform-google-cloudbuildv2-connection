<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_external"></a> [external](#requirement\_external) | >= 2.2.0 |
| <a name="requirement_google"></a> [google](#requirement\_google) | >= 4.60.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | >= 4.60.0 |
| <a name="provider_google-beta"></a> [google-beta](#provider\_google-beta) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google-beta_google_cloudbuildv2_connection.github](https://registry.terraform.io/providers/hashicorp/google-beta/latest/docs/resources/google_cloudbuildv2_connection) | resource |
| [google-beta_google_cloudbuildv2_repository.repositories](https://registry.terraform.io/providers/hashicorp/google-beta/latest/docs/resources/google_cloudbuildv2_repository) | resource |
| [google_secret_manager_secret.github_auth_token](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/secret_manager_secret) | resource |
| [google_secret_manager_secret_iam_member.clouduild_github_auth_token](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/secret_manager_secret_iam_member) | resource |
| [google_project.project](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/project) | data source |
| [google_secret_manager_secret_version.github_auth_token](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/secret_manager_secret_version) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_github_app_installation_id"></a> [github\_app\_installation\_id](#input\_github\_app\_installation\_id) | Installation ID for the Cloud Build GitHub App<br><br>For personal accounts, go to https://github.com/settings/installations<br>and click on the Cloud Build app. Retrieve the installation ID from the URL.<br><br>For organization accounts, go to<br>https://github.com/organizations/[ORGANIZATION]/settings/installations<br>and click on the Cloud Build app. Retrieve the installation ID from the URL. | `number` | n/a | yes |
| <a name="input_github_login"></a> [github\_login](#input\_github\_login) | GitHub login of the user or organization that owns the repositories | `string` | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | Google Project ID in which to create the Cloud Build resources | `string` | n/a | yes |
| <a name="input_create_secret"></a> [create\_secret](#input\_create\_secret) | Whether to create the GitHub OAuth Token Secret | `bool` | `false` | no |
| <a name="input_github_connection_name"></a> [github\_connection\_name](#input\_github\_connection\_name) | Name of the Cloud Build v2 Connection to GitHub | `string` | `"github"` | no |
| <a name="input_oauth_token_secret"></a> [oauth\_token\_secret](#input\_oauth\_token\_secret) | Name of the GitHub OAuth Token Secret | `string` | `"github-token"` | no |
| <a name="input_oauth_token_secret_version"></a> [oauth\_token\_secret\_version](#input\_oauth\_token\_secret\_version) | Secret Version ID of the GitHub OAuth Token | `string` | `"latest"` | no |
| <a name="input_region"></a> [region](#input\_region) | Region of the Cloud Build v2 Connection to GitHub | `string` | `"us-central1"` | no |
| <a name="input_repositories"></a> [repositories](#input\_repositories) | List of GitHub repositories to create Cloud Build v2 Repositories for | `list(string)` | `[]` | no |
| <a name="input_secret_project"></a> [secret\_project](#input\_secret\_project) | Google Project ID in which the GitHub OAuth Token Secret is stored | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_oauth_token_secret_version"></a> [oauth\_token\_secret\_version](#output\_oauth\_token\_secret\_version) | Secret Version ID of the GitHub OAuth Token |
| <a name="output_repository_ids"></a> [repository\_ids](#output\_repository\_ids) | Map of Cloud Build v2 Repositories |

## Terraform Docs
To Manually Generate Terraform Documentation for this Module, run the following command from the root of the Module's Repository:

```
docker run --rm --volume "$(pwd):/terraform-docs" -u $(id -u) quay.io/terraform-docs/terraform-docs:latest --output-file README.md --output-mode inject /terraform-docs
```
<!-- END_TF_DOCS -->
