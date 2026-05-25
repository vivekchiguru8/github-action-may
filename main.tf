terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

provider "google" {
  project = "project-8f3b3c8e-4647-4878-8b5"
  region  = "us-central1"
  zone    = "us-central1-a"
}

resource "google_storage_bucket" "basic_bucket" {
  # Bucket names must be globally unique
  name          = "vivek-tf-bucket-project-8f3b3c8e-4647-4878-8b5"
  location      = "US"
  storage_class = "STANDARD"

  # Enforce IAM-based permissions instead of Access Control Lists (ACLs)
  uniform_bucket_level_access = true

  # Set to true only if you want Terraform to allow destruction of a bucket containing objects
  force_destroy = true
}