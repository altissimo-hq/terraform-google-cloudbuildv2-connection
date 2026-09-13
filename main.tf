terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 4.83.0"
    }
  }
}

data "google_client_config" "current" {}
