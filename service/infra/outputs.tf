output "app_url" {
  value = module.cloud_run_app.url
}

output "api_url" {
  value = module.cloud_run_server.url
}
