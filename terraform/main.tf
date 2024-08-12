# main.tf

provider "google" {
  project     = var.project_id
  region      = "us-central1"
  credentials = file("~/Downloads/absolute-maxim-406201-53aa3b6c24a3.json")
}

resource "google_sql_database_instance" "db_instance" {
  name             = "my-sql-instance"
  database_version = "MYSQL_5_7"
  region           = "us-central1"
  settings {
    tier = "db-f1-micro"
  }
}

resource "google_storage_bucket" "static_bucket" {
  name     = "my-static-files-bucket"
  location = "US"
}

resource "google_cloud_run_service" "php_service" {
  name     = "php-service"
  location = "us-central1"
  template {
    spec {
      containers {
        image = "gcr.io/${var.project_id}/php-fpm-nginx:latest"
      }
    }
  }
}

resource "google_compute_url_map" "default" {
  name            = "my-url-map"
  default_service = google_cloud_run_service.php_service.status[0].url
}


resource "google_project_iam_binding" "cloudsql_admin_binding" {
  project = "devops-test-project-432119"
  role    = "roles/cloudsql.admin"

  members = [
    "serviceAccount:733221859774-compute@developer.gserviceaccount.com",
  ]
}

resource "google_project_iam_binding" "storage_admin_binding" {
  project = "devops-test-project-432119"
  role    = "roles/storage.admin"

  members = [
    "serviceAccount:733221859774-compute@developer.gserviceaccount.com",
  ]
}

resource "google_project_iam_binding" "run_admin_binding" {
  project = "devops-test-project-432119"
  role    = "roles/run.admin"

  members = [
    "serviceAccount:733221859774-compute@developer.gserviceaccount.com",
  ]
}

