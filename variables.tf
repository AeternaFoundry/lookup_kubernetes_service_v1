variable "service_v1_lookup" {
  description = <<EOT
Map of service_v1_lookup, attributes below
Required:
    - metadata (block):
        - annotations (optional)
        - labels (optional)
        - name (optional)
        - namespace (optional)
EOT

  type = map(object({
    metadata = object({
      annotations = optional(map(string))
      labels      = optional(map(string))
      name        = optional(string)
      namespace   = optional(string)
    })
  }))
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

