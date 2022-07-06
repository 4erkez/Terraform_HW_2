variable "project" {
  type = string
  description = "GCP project id"
  default = "terraform-home-work"
}

variable "region" {
  type = string
  description = "GCP region"
  default = "europe-central2"
}

variable "zone" {
  type = string
  description = "GCP zone"
  default = "europe-central2-a"
}

variable "key" {
  type = string
  description = "JSON key to service account"
  default = "terraform-home-work-81dcf2e3f7cb.json"
}

variable "vpc_name" {
  type = string
  description = "VPC name"
  default = "vpc-tf-hw-2"
}

variable "subnet_name" {
  type = string
  description = "Subnet name"
  default = "subnet-tf-hw-2"
}

variable "cidr" {
  type = string
  description = "VPC subnet cidr address"
  default = "192.168.0.0/24"
}

variable "router_name" {
  type = string
  description = "Router name"
  default = "roter-tf-hw-2"
}

variable "router_nat_name" {
  type = string
  description = "NAT name"
  default = "nat-tf-hw-2"
}

variable "firewall_name" {
  type = string
  description = "Firewall name"
  default = "firewall-tf-hw-2"
}

variable "auto_mode" {
  type = bool
  description = "Auto Mode"
  default = false
}

variable "instance_name" {
  type = string
  description = "Instance Name"
  default = "gce-tf-hw-2"
}

variable "instance_type" {
  type = string
  description = "Instance Type"
  default = "f1-micro"
}

variable "boot_image" {
  type = string
  description = "Boot Image"
  default = "debian-cloud/debian-9"
}

variable "metadata_startup_script" {
  type = string
  description = "Startup Script"
  default = "sudo apt-get -y update; sudo apt-get -y install nginx; sudo service nginx start;"
}

variable "disk_name" {
  type = string
  description = "Disk Name"
  default = "disk-tf-hw-2"
}

variable "disk_type" {
  type = string
  description = "Disc Type"
  default = "pd-balanced"
}

variable "disk_size" {
  type = string
  description = "Disk Size"
  default = "1"
}
