output "flow_logs_id" {
  description = "Map of id values across all flow_logs, keyed the same as var.flow_logs"
  value       = { for k, v in aws_flow_log.flow_logs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "flow_logs_arn" {
  description = "Map of arn values across all flow_logs, keyed the same as var.flow_logs"
  value       = { for k, v in aws_flow_log.flow_logs : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "flow_logs_deliver_cross_account_role" {
  description = "Map of deliver_cross_account_role values across all flow_logs, keyed the same as var.flow_logs"
  value       = { for k, v in aws_flow_log.flow_logs : k => v.deliver_cross_account_role if v.deliver_cross_account_role != null && length(v.deliver_cross_account_role) > 0 }
}
output "flow_logs_destination_options" {
  description = "Map of destination_options values across all flow_logs, keyed the same as var.flow_logs"
  value       = { for k, v in aws_flow_log.flow_logs : k => one(v.destination_options) if v.destination_options != null && length(v.destination_options) > 0 }
}
output "flow_logs_eni_id" {
  description = "Map of eni_id values across all flow_logs, keyed the same as var.flow_logs"
  value       = { for k, v in aws_flow_log.flow_logs : k => v.eni_id if v.eni_id != null && length(v.eni_id) > 0 }
}
output "flow_logs_iam_role_arn" {
  description = "Map of iam_role_arn values across all flow_logs, keyed the same as var.flow_logs"
  value       = { for k, v in aws_flow_log.flow_logs : k => v.iam_role_arn if v.iam_role_arn != null && length(v.iam_role_arn) > 0 }
}
output "flow_logs_log_destination" {
  description = "Map of log_destination values across all flow_logs, keyed the same as var.flow_logs"
  value       = { for k, v in aws_flow_log.flow_logs : k => v.log_destination if v.log_destination != null && length(v.log_destination) > 0 }
}
output "flow_logs_log_destination_type" {
  description = "Map of log_destination_type values across all flow_logs, keyed the same as var.flow_logs"
  value       = { for k, v in aws_flow_log.flow_logs : k => v.log_destination_type if v.log_destination_type != null && length(v.log_destination_type) > 0 }
}
output "flow_logs_log_format" {
  description = "Map of log_format values across all flow_logs, keyed the same as var.flow_logs"
  value       = { for k, v in aws_flow_log.flow_logs : k => v.log_format if v.log_format != null && length(v.log_format) > 0 }
}
output "flow_logs_max_aggregation_interval" {
  description = "Map of max_aggregation_interval values across all flow_logs, keyed the same as var.flow_logs"
  value       = { for k, v in aws_flow_log.flow_logs : k => v.max_aggregation_interval if v.max_aggregation_interval != null }
}
output "flow_logs_region" {
  description = "Map of region values across all flow_logs, keyed the same as var.flow_logs"
  value       = { for k, v in aws_flow_log.flow_logs : k => v.region if v.region != null && length(v.region) > 0 }
}
output "flow_logs_regional_nat_gateway_id" {
  description = "Map of regional_nat_gateway_id values across all flow_logs, keyed the same as var.flow_logs"
  value       = { for k, v in aws_flow_log.flow_logs : k => v.regional_nat_gateway_id if v.regional_nat_gateway_id != null && length(v.regional_nat_gateway_id) > 0 }
}
output "flow_logs_subnet_id" {
  description = "Map of subnet_id values across all flow_logs, keyed the same as var.flow_logs"
  value       = { for k, v in aws_flow_log.flow_logs : k => v.subnet_id if v.subnet_id != null && length(v.subnet_id) > 0 }
}
output "flow_logs_tag_field_specification" {
  description = "Map of tag_field_specification values across all flow_logs, keyed the same as var.flow_logs"
  value       = { for k, v in aws_flow_log.flow_logs : k => v.tag_field_specification if v.tag_field_specification != null && length(v.tag_field_specification) > 0 }
}
output "flow_logs_tags" {
  description = "Map of tags values across all flow_logs, keyed the same as var.flow_logs"
  value       = { for k, v in aws_flow_log.flow_logs : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "flow_logs_tags_all" {
  description = "Map of tags_all values across all flow_logs, keyed the same as var.flow_logs"
  value       = { for k, v in aws_flow_log.flow_logs : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "flow_logs_traffic_type" {
  description = "Map of traffic_type values across all flow_logs, keyed the same as var.flow_logs"
  value       = { for k, v in aws_flow_log.flow_logs : k => v.traffic_type if v.traffic_type != null && length(v.traffic_type) > 0 }
}
output "flow_logs_transit_gateway_attachment_id" {
  description = "Map of transit_gateway_attachment_id values across all flow_logs, keyed the same as var.flow_logs"
  value       = { for k, v in aws_flow_log.flow_logs : k => v.transit_gateway_attachment_id if v.transit_gateway_attachment_id != null && length(v.transit_gateway_attachment_id) > 0 }
}
output "flow_logs_transit_gateway_id" {
  description = "Map of transit_gateway_id values across all flow_logs, keyed the same as var.flow_logs"
  value       = { for k, v in aws_flow_log.flow_logs : k => v.transit_gateway_id if v.transit_gateway_id != null && length(v.transit_gateway_id) > 0 }
}
output "flow_logs_vpc_id" {
  description = "Map of vpc_id values across all flow_logs, keyed the same as var.flow_logs"
  value       = { for k, v in aws_flow_log.flow_logs : k => v.vpc_id if v.vpc_id != null && length(v.vpc_id) > 0 }
}

