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
