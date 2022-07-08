module "gce" {
  source = "./module"
  name=var.gce_name

  //network_ip = var.network_ip
  network_project_id = var.network_project_id
  region = var.region
  subnet = var.subnet
}