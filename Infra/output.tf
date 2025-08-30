output "cluster_name" {
  value = google_container_cluster.primary.name
}

output "bucket_name" {
  value = google_storage_bucket.gcs-storage.name
}

output "kubernetes_endpoint" {
  value = google_container_cluster.primary.endpoint
}

output "gke_service_account" {
  value = google_service_account.gke_node_sa.email
}

output "vpc_network_name" {
  value = google_compute_network.gke-vpc.name
}

output "vpc_network_self_link" {
  value = google_compute_network.gke-vpc.self_link
}

output "subnet_name" {
  value = google_compute_subnetwork.subnet-1a.name
}

output "subnet_ip_cidr_range" {
  value = google_compute_subnetwork.subnet-1a.ip_cidr_range
}

output "subnet_self_link" {
  value = google_compute_subnetwork.subnet-1a.self_link
}
