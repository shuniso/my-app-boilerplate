terraform {
  required_version = ">= 1.3.0"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}

module "cloud_run_app" {
  source = "./modules/cloud_run"
  name   = "frontend-app"
  image  = var.app_image
}

module "cloud_run_server" {
  source = "./modules/cloud_run"
  name   = "graphql-api"
  image  = var.server_image
}

module "firestore" {
  source = "./modules/firestore"
}

module "secret_manager" {
  source = "./modules/secret_manager"
}
