provider "google" {
  project = "webx-424701"
  region  = "us-central1"
}

resource "google_storage_bucket" "bucket" {
  name     = "nimbus2000bucket"
  location = "US"
}


terraform {
  required_version = ">= 0.12"
  backend "local" {
    path = "terraform.tfstate"
  }
}