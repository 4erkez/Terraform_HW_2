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

variable "vpc_name" {
  type = string
  description = "VPC name"
}

variable "subnet_name" {
  type = string
  description = "Subnet name"
}

variable "cidr" {
  type = string
  description = "VPC subnet cidr address"
}

variable "router_name" {
  type = string
  description = "Router name"
}

variable "router_nat_name" {
  type = string
  description = "NAT name"
}

variable "firewall_name" {
  type = string
  description = "Firewall name"
}

variable "auto_mode" {
  type = bool
  description = "Auto Mode"
}