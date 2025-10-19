resource "local_file" "batch_processing" {
  content  = "Batch Processing for ${var.name}"
  filename = "${var.datacenter}/${var.name}-batch.txt"
}