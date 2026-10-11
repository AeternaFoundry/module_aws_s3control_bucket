output "s3control_buckets_id" {
  description = "Map of id values across all s3control_buckets, keyed the same as var.s3control_buckets"
  value       = { for k, v in aws_s3control_bucket.s3control_buckets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "s3control_buckets_arn" {
  description = "Map of arn values across all s3control_buckets, keyed the same as var.s3control_buckets"
  value       = { for k, v in aws_s3control_bucket.s3control_buckets : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "s3control_buckets_bucket" {
  description = "Map of bucket values across all s3control_buckets, keyed the same as var.s3control_buckets"
  value       = { for k, v in aws_s3control_bucket.s3control_buckets : k => v.bucket if v.bucket != null && length(v.bucket) > 0 }
}
output "s3control_buckets_creation_date" {
  description = "Map of creation_date values across all s3control_buckets, keyed the same as var.s3control_buckets"
  value       = { for k, v in aws_s3control_bucket.s3control_buckets : k => v.creation_date if v.creation_date != null && length(v.creation_date) > 0 }
}
output "s3control_buckets_outpost_id" {
  description = "Map of outpost_id values across all s3control_buckets, keyed the same as var.s3control_buckets"
  value       = { for k, v in aws_s3control_bucket.s3control_buckets : k => v.outpost_id if v.outpost_id != null && length(v.outpost_id) > 0 }
}
output "s3control_buckets_public_access_block_enabled" {
  description = "Map of public_access_block_enabled values across all s3control_buckets, keyed the same as var.s3control_buckets"
  value       = { for k, v in aws_s3control_bucket.s3control_buckets : k => v.public_access_block_enabled if v.public_access_block_enabled != null }
}
output "s3control_buckets_region" {
  description = "Map of region values across all s3control_buckets, keyed the same as var.s3control_buckets"
  value       = { for k, v in aws_s3control_bucket.s3control_buckets : k => v.region if v.region != null && length(v.region) > 0 }
}
output "s3control_buckets_tags" {
  description = "Map of tags values across all s3control_buckets, keyed the same as var.s3control_buckets"
  value       = { for k, v in aws_s3control_bucket.s3control_buckets : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "s3control_buckets_tags_all" {
  description = "Map of tags_all values across all s3control_buckets, keyed the same as var.s3control_buckets"
  value       = { for k, v in aws_s3control_bucket.s3control_buckets : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

