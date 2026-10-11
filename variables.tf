variable "s3control_buckets" {
  description = <<EOT
Map of s3control_buckets, attributes below
Required:
    - bucket
    - outpost_id
Optional:
    - region
    - tags
    - tags_all
EOT

  type = map(object({
    bucket     = string
    outpost_id = string
    region     = optional(string)
    tags       = optional(map(string))
    tags_all   = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.s3control_buckets : (
        length(v.outpost_id) >= 1 && length(v.outpost_id) <= 64
      )
    ])
    error_message = "must be between 1 and 64 characters"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

