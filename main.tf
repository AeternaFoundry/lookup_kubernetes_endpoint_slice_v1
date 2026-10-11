data "kubernetes_endpoint_slice_v1" "endpoint_slice_v1_lookup" {
  for_each = var.endpoint_slice_v1_lookup


  metadata {
    annotations   = each.value.metadata.annotations
    generate_name = each.value.metadata.generate_name
    labels        = each.value.metadata.labels
    name          = each.value.metadata.name
    namespace     = each.value.metadata.namespace
  }
}

