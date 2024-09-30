terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

provider "google" {
  project = "sec-scc-tst"
  region  = "europe-west1"
  zone    = "europe-west1-b"
}


resource "google_storage_bucket" "example_bucket" {
  name          = "example-bucket-1"
  location      = "EU"
  force_destroy = true
  project = "sec-scc-tst"
  versioning {
    enabled = var.version_objects
  }
  uniform_bucket_level_access = false
}
