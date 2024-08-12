# outputs.tf

output "cloud_sql_instance" {
  value = module.cloud_sql.instance_name
}

output "storage_bucket" {
  value = google_storage_bucket.static_bucket.name
}

output "cloud_run_url" {
  value = module.cloud_run.service_url
}

