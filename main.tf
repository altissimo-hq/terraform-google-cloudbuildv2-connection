terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 4.83.0"
    }
    external = {
      source  = "hashicorp/external"
      version = ">= 2.2.0"
    }
  }
}

data "google_client_config" "current" {}
