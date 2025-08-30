resource "google_storage_bucket" "nexus_bucket" {
  name          = "GCS-Storage"
  location      = var.region
  force_destroy = true

  uniform_bucket_level_access = true

  lifecycle_rule {
    action {
      type = "Delete"
    }
    condition {
      age = 12
    }
  }
}