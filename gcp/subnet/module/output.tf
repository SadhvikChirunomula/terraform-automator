output "subnet_name" {
  value = google_compute_subnetwork.network-with-private-secondary-ip-ranges.name
}
output "subnet_region" {
  value =google_compute_subnetwork.network-with-private-secondary-ip-ranges.region
}