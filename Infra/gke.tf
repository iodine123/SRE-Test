
resource "google_container_cluster" "primary" {
  name = "CloudMile-Test-Cluster"
  location = var.region

  remove_default_node_pool = true
  initial_node_count = 1

  node_pool {
    name       = "default-pool"
    node_count = 1

    node_config {
      machine_type = "n1-standard-1"
      preemptible  = true
      oauth_scopes = [
        "https://www.googleapis.com/auth/cloud-platform"
      ]
    }

    management {
      auto_repair  = true
      auto_upgrade = true
    }
  }
}