## Terraform Docs
To Manually Generate Terraform Documentation for this Module, run the following command from the root of the Module's Repository:

```
docker run --rm --volume "$(pwd):/terraform-docs" -u $(id -u) quay.io/terraform-docs/terraform-docs:latest --output-file README.md --output-mode inject /terraform-docs
```
