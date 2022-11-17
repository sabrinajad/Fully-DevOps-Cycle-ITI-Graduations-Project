resource "google_compute_router_nat" "nat" {
  name   = "nat"
  router = google_compute_router.myrouter.name
  region = "us-central1"

  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"
  nat_ip_allocate_option             = "AUTO_ONLY"
}
