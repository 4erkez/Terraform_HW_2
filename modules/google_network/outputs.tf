output "gateway_ip" {
  value = google_compute_subnetwork.subnet-tf-hw-2.gateway_address
}

output "subnet_self_link" {
  value = google_compute_subnetwork.subnet-tf-hw-2.self_link
}

output "subnet_id" {
  value = google_compute_subnetwork.subnet-tf-hw-2.id
}