module "data_collection_api" {
  source = "../api-data-collection"
  name   = var.name
  datacenter  = var.datacenter
}

module "activation_api" {
  source = "../api-activation"
  name   = var.name
  datacenter  = var.datacenter
}

module "batch_processing" {
  source = "../batch-processing"
  count  = var.enable_batch ? 1 : 0
  name   = var.name
  datacenter  = var.datacenter
}

module "realtime_processing" {
  source = "../realtime-processing"
  count  = var.enable_realtime ? 1 : 0
  name   = var.name
  datacenter  = var.datacenter
}