provider "google" {
  project     = "devops-test-project-432119"
  region      = "us-central1"
  credentials = file("~/Downloads/absolute-maxim-406201-53aa3b6c24a3.json")
}
