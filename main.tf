
locals {
  customers = [
    { name = "AcmeCorp", enable_batch = true, enable_realtime = true, datacenter = "frankfurt" },
    { name = "BetaInc", enable_batch = false, enable_realtime = true, datacenter = "virginia" }
  ]
}


module "saas-instances" {
  source   = "./modules/saas-instance"
  for_each = { for c in local.customers : c.name => c }

  name            = each.value.name
  enable_batch    = each.value.enable_batch
  enable_realtime = each.value.enable_realtime
  datacenter      = each.value.datacenter
}