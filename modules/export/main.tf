resource "local_file" "batch_processing" {
  content  = "Export for ${var.name}"
  filename = "${var.datacenter}/${var.name}-export.txt"
}