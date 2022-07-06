module "vpc" {
  source                      = "./modules/google_network"
  project                     = var.project
  region                      = var.region
  zone                        = var.zone
  vpc_name                    = var.vpc_name
  subnet_name                 = var.subnet_name
  cidr                        = var.cidr
  router_name                 = var.router_name
  router_nat_name             = var.router_nat_name
  firewall_name               = var.firewall_name
  auto_mode                   = var.auto_mode
}

module "gce" {
  source                      = "./modules/google_compute"
  project                     = var.project
  region                      = var.region
  zone                        = var.zone
  vpc_name                    = var.vpc_name
  subnet_name                 = module.vpc.subnet_self_link
  instance_name               = var.instance_name
  instance_type               = var.instance_type
  boot_image                  = var.boot_image
  metadata_startup_script     = var.metadata_startup_script
  disk_name                   = var.disk_name
  disk_type                   = var.disk_type
  disk_size                   = var.disk_size

}


