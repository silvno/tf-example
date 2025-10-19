resource "local_file" "activation_api" {
  content  = "Activation API for ${var.name}"
  filename = "${var.datacenter}/${var.name}-activation-api.txt"
}