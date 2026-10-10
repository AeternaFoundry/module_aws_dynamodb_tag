output "dynamodb_tags_id" {
  description = "Map of id values across all dynamodb_tags, keyed the same as var.dynamodb_tags"
  value       = { for k, v in aws_dynamodb_tag.dynamodb_tags : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dynamodb_tags_key" {
  description = "Map of key values across all dynamodb_tags, keyed the same as var.dynamodb_tags"
  value       = { for k, v in aws_dynamodb_tag.dynamodb_tags : k => v.key if v.key != null && length(v.key) > 0 }
}
output "dynamodb_tags_region" {
  description = "Map of region values across all dynamodb_tags, keyed the same as var.dynamodb_tags"
  value       = { for k, v in aws_dynamodb_tag.dynamodb_tags : k => v.region if v.region != null && length(v.region) > 0 }
}
output "dynamodb_tags_resource_arn" {
  description = "Map of resource_arn values across all dynamodb_tags, keyed the same as var.dynamodb_tags"
  value       = { for k, v in aws_dynamodb_tag.dynamodb_tags : k => v.resource_arn if v.resource_arn != null && length(v.resource_arn) > 0 }
}
output "dynamodb_tags_value" {
  description = "Map of value values across all dynamodb_tags, keyed the same as var.dynamodb_tags"
  value       = { for k, v in aws_dynamodb_tag.dynamodb_tags : k => v.value if v.value != null && length(v.value) > 0 }
}

