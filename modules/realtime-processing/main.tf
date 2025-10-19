resource "local_file" "realtime_processing" {
  content  = "Realtime Processing for ${var.name}"
  filename = "${var.datacenter}/${var.name}-realtime.txt"
}