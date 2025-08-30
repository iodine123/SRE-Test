resource "google_compute_network" "gke-vpc" {
  name                    = "gke-vpc"
  auto_create_subnetworks = false 
}

resource "google_compute_subnetwork" "subnet-1a" {
  name          = "subnet-1a"
  ip_cidr_range = "192.168.0.0/20" 
  region        = var.region
  network       = google_compute_network.gke-vpc.id
  private_ip_google_access = true  
}