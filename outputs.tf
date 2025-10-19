output "saas-instances" {
  description = "All customer SaaS instances"
  value = { for k, m in module.saas-instances : k => {
    name            = m.name
    batch_enabled   = m.batch_enabled
    realtime_enabled = m.realtime_enabled
  }}
}