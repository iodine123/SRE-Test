output "cluster_name" {
  value = google_container_cluster.primary.name
}

output "bucket_name" {
  value = google_storage_bucket.nexus_bucket.name
}

output "kubernetes_endpoint" {
  value = google_container_cluster.primary.endpoint
}
