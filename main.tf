data "kubernetes_service_v1" "service_v1_lookup" {
  for_each = var.service_v1_lookup


  metadata {
    annotations = each.value.metadata.annotations
    labels      = each.value.metadata.labels
    name        = each.value.metadata.name
    namespace   = each.value.metadata.namespace
  }
}

