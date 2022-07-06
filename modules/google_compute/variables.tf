variable "project" {
  type = string
  description = "GCP project id"
}

variable "region" {
  type  = string
  description = "GCP region"
}

variable "zone" {
  type = string
  description = "GCP zone"
}

variable "instance_name" {
  type = string
  description = "Instance Name"
}

variable "instance_type" {
  type = string
  description = "Instance Type"
}

variable "boot_image" {
  type = string
  description = "Boot Image"
}

variable "metadata_startup_script" {
  type = string
  description = "Startup Script"
}

variable "disk_name" {
  type = string
  description = "Disk Name"
}

variable "disk_type" {
  type = string
  description = "Disc Type"
}

variable "disk_size" {
  type = string
  description = "Disk Size"
}

variable "vpc_name" {
  type = string
  description = "VPC name"
}

variable "subnet_name" {
  type = string
  description = "Subnet name"
}