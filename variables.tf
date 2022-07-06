variable "project" {
  type = string
  default = "terraform-home-work"
}

variable "region" {
  type = string
  default = "europe-central2"
}

variable "zone" {
  type = string
  default = "europe-central2-a"
}

variable "key" {
  type = string
  default = "terraform-home-work-81dcf2e3f7cb.json"
}

variable "vpc_name" {
  type = string
  default = "vpc-tf-hw-2"
}

variable "subnet_name" {
  type = string
  default = "subnet-tf-hw-2"
}

variable "cidr" {
  type = string
  default = "192.168.0.0/24"
}

variable "router_name" {
  type = string
  default = "roter-tf-hw-2"
}

variable "router_nat_name" {
  type = string
  default = "nat-tf-hw-2"
}

variable "firewall_name" {
  type = string
  default = "firewall-tf-hw-2"
}

variable "auto_mode" {
  type = bool
  default = false
}

variable "instance_name" {
  type = string
  default = "gce-tf-hw-2"
}

variable "instance_type" {
  type = string
  default = "f1-micro"
}

variable "boot_image" {
  type = string
  default = "debian-cloud/debian-9"
}

variable "metadata_startup_script" {
  type = string
  default = "sudo apt-get -y update; sudo apt-get -y install nginx; sudo service nginx start;"
}

variable "disk_name" {
  type = string
  default = "disk-tf-hw-2"
}

variable "disk_type" {
  type = string
  default = "pd-balanced"
}

variable "disk_size" {
  type = string
  default = "1"
}
