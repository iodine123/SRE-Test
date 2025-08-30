resource "google_storage_bucket" "gcs-storage" {
  name          = "${var.project_id}-gcs-storage"
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