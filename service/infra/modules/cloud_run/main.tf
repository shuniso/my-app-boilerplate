variable "name" {
  type = string
}

variable "image" {
  type = string
}

variable "region" {
  type    = string
  default = "asia-northeast1"
}

resource "google_cloud_run_service" "default" {
  name     = var.name
  location = var.region

  template {
    spec {
      containers {
        image = var.image
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }
}

output "url" {
  value = google_cloud_run_service.default.status[0].url
}
