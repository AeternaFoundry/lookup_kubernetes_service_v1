output "service_v1_lookup_id" {
  description = "Map of id values across all service_v1_lookup, keyed the same as var.service_v1_lookup except keys with no id are omitted"
  value       = { for k, v in data.kubernetes_service_v1.service_v1_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "service_v1_lookup_metadata" {
  description = "Map of metadata values across all service_v1_lookup, keyed the same as var.service_v1_lookup except keys with no metadata are omitted"
  value       = { for k, v in data.kubernetes_service_v1.service_v1_lookup : k => one(v.metadata) if v.metadata != null && length(v.metadata) > 0 }
}
output "service_v1_lookup_spec" {
  description = "Map of spec values across all service_v1_lookup, keyed the same as var.service_v1_lookup except keys with no spec are omitted"
  value       = { for k, v in data.kubernetes_service_v1.service_v1_lookup : k => v.spec if v.spec != null && length(v.spec) > 0 }
}
output "service_v1_lookup_status" {
  description = "Map of status values across all service_v1_lookup, keyed the same as var.service_v1_lookup except keys with no status are omitted"
  value       = { for k, v in data.kubernetes_service_v1.service_v1_lookup : k => v.status if v.status != null && length(v.status) > 0 }
}

