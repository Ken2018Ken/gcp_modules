resource "google_compute_network" "vpc_network" {
  name = var.vpc_network_name
}


resource "google_compute_firewall" "fw" {
  name    = var.firewall_name
  network = google_compute_network.vpc_network.name

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "all"

  }

  #target_tags   = [var.tagg]
  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_address" "static_ip" {
  name = "terraform-static-ipp"
}