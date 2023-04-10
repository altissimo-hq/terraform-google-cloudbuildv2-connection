terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 4.60.0"
    }
    external = {
      source  = "hashicorp/external"
      version = ">= 2.2.0"
    }
  }
}
