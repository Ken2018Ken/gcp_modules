output "ip" {
  value = google_compute_instance.vm_instance.network_interface.0.access_config.0.nat_ip

}
output "machine_type" {
  value = google_compute_instance.vm_instance.machine_type
}

output "boot_image" {

  value = google_compute_instance.vm_instance.boot_disk[0].device_name
}

output "boot_disk_size" {

  value = google_compute_instance.vm_instance.boot_disk[0].mode

}