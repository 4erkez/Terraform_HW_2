resource "google_compute_attached_disk" "attached-disk-tf-hw-2" {
  disk     = google_compute_disk.disk-tf-hw-2.id
  instance = google_compute_instance.gce-tf-hw-2.id
}

resource "google_compute_disk" "disk-tf-hw-2" {
  name  = var.disk_name
  type  = var.disk_type
  size  = var.disk_size
  zone  = var.zone
  
}

resource "google_compute_instance" "gce-tf-hw-2" {
  name         = var.instance_name
  machine_type = var.instance_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.boot_image
    }
  }
  network_interface {
    network = var.vpc_name
    subnetwork = var.subnet_name
  }

  metadata_startup_script = var.metadata_startup_script


}