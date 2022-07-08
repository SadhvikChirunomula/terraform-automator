//terraform {
//  backend "gcs" {
//
//  }
//}


resource "google_compute_instance" "default" {
  name         = var.name
  machine_type = "e2-medium"
  zone         = "us-central1-a"

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    //network = "default"
    subnetwork = "projects/${var.network_project_id}/regions/${var.region}/subnetworks/${var.subnet}"
    network_ip = google_compute_address.internal_ip[0].address

    access_config {
      // Ephemeral public IP
    }
  }

  metadata = {
    foo = "bar"
  }

  metadata_startup_script = "echo hi > /test.txt"

  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email  = "terraform-training-servaccount@terraform-training-project1.iam.gserviceaccount.com"
    scopes = ["cloud-platform"]
  }
}
resource "google_compute_address" "internal_ip" {
  count        = 1
  name         = "gce-mt4039"
  subnetwork   = var.subnet

  address_type = "INTERNAL"
  address      = ""
  purpose      = "GCE_ENDPOINT"
  project      = var.network_project_id
  region       = var.region
}