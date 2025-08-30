
resource "google_service_account" "gke_node_sa" {
  account_id   = "gk-node-sa"
  display_name = "GKE Node Service Account for Nexus"
}

resource "google_container_cluster" "primary" {
  name = "cloudmile-test-cluster"
  location = var.region

  remove_default_node_pool = true
  deletion_protection = false

  node_pool {
    name       = "default-pool"
    node_count = 1

    node_config {
      machine_type = "n1-standard-1"
      labels = {
        "kind" = "gke-nodes"
      }
      preemptible  = true
      oauth_scopes = [
        "https://www.googleapis.com/auth/cloud-platform"
      ]
      service_account = google_service_account.gke_node_sa.email
    }

    management {
      auto_repair  = true
      auto_upgrade = true
    }
  }
}