output "endpoint_slice_v1_lookup_id" {
  description = "Map of id values across all endpoint_slice_v1_lookup, keyed the same as var.endpoint_slice_v1_lookup except keys with no id are omitted"
  value       = { for k, v in data.kubernetes_endpoint_slice_v1.endpoint_slice_v1_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "endpoint_slice_v1_lookup_address_type" {
  description = "Map of address_type values across all endpoint_slice_v1_lookup, keyed the same as var.endpoint_slice_v1_lookup except keys with no address_type are omitted"
  value       = { for k, v in data.kubernetes_endpoint_slice_v1.endpoint_slice_v1_lookup : k => v.address_type if v.address_type != null && length(v.address_type) > 0 }
}
output "endpoint_slice_v1_lookup_endpoint" {
  description = "Map of endpoint values across all endpoint_slice_v1_lookup, keyed the same as var.endpoint_slice_v1_lookup except keys with no endpoint are omitted"
  value       = { for k, v in data.kubernetes_endpoint_slice_v1.endpoint_slice_v1_lookup : k => v.endpoint if v.endpoint != null && length(v.endpoint) > 0 }
}
output "endpoint_slice_v1_lookup_metadata" {
  description = "Map of metadata values across all endpoint_slice_v1_lookup, keyed the same as var.endpoint_slice_v1_lookup except keys with no metadata are omitted"
  value       = { for k, v in data.kubernetes_endpoint_slice_v1.endpoint_slice_v1_lookup : k => one(v.metadata) if v.metadata != null && length(v.metadata) > 0 }
}
output "endpoint_slice_v1_lookup_port" {
  description = "Map of port values across all endpoint_slice_v1_lookup, keyed the same as var.endpoint_slice_v1_lookup except keys with no port are omitted"
  value       = { for k, v in data.kubernetes_endpoint_slice_v1.endpoint_slice_v1_lookup : k => v.port if v.port != null && length(v.port) > 0 }
}

