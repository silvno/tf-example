resource "local_file" "data_collection_api" {
  content  = "Data Collection API for ${var.name}"
  filename = "${var.datacenter}/${var.name}-data-collection-api.txt"
}