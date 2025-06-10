variable "project_id" {
  type        = string
  description = "GCP project ID"
}

variable "region" {
  type        = string
  description = "GCP region"
  default     = "asia-northeast1"
}

variable "app_image" {
  type        = string
  description = "Container image for frontend app"
}

variable "server_image" {
  type        = string
  description = "Container image for API server"
}
