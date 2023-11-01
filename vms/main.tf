
resource "google_compute_instance" "vm_instance" {
  name = var.instance_name

  machine_type            = var.machine_type
  metadata_startup_script = var.startupscript
  tags                    = [var.taget_taggs]
  zone                    = var.zone
  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    network = var.vpc_network_name
    access_config {
    }
  }
  metadata = {



    "ssh-keys" = "${var.usertovm}: ${var.keyvaliu}"

  }
}




resource "google_compute_firewall" "allow_ssh" {
  name          = var.taget_taggs
  network       = var.vpc_network_name
  target_tags   = [var.taget_taggs]
  source_ranges = ["0.0.0.0/0"]

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
}