resource "google_compute_network" "vpc-tf-hw-2" {
  project                 = var.project
  name                    = var.vpc_name
  auto_create_subnetworks = var.auto_mode
}

resource "google_compute_subnetwork" "subnet-tf-hw-2" {
  name          = var.subnet_name
  ip_cidr_range = var.cidr
  region        = var.region
  network       = google_compute_network.vpc-tf-hw-2.id
  project       = var.project
}

resource "google_compute_router" "router-tf-hw-2" {
  name           = var.router_name
  network        = google_compute_network.vpc-tf-hw-2.name
  region         = var.region

}

resource "google_compute_router_nat" "nat-tf-hw-2" {
  name                               = var.router_nat_name
  router                             = google_compute_router.router-tf-hw-2.name
  region                             = google_compute_router.router-tf-hw-2.region
  nat_ip_allocate_option             = "AUTO_ONLY"
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"

  log_config {
    enable = true
    filter = "ALL"
  }
}

resource "google_compute_firewall" "firewall-tf-hw-2" {
  name    = var.firewall_name
  network = google_compute_network.vpc-tf-hw-2.name

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
}