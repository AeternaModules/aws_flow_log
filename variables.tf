variable "flow_logs" {
  description = <<EOT
Map of flow_logs, attributes below
Optional:
    - deliver_cross_account_role
    - eni_id
    - iam_role_arn
    - log_destination
    - log_destination_type
    - log_format
    - max_aggregation_interval
    - region
    - regional_nat_gateway_id
    - subnet_id
    - tags
    - tags_all
    - traffic_type
    - transit_gateway_attachment_id
    - transit_gateway_id
    - vpc_id
    - destination_options (block):
        - file_format (optional)
        - hive_compatible_partitions (optional)
        - per_hour_partition (optional)
    - tag_field_specification (block):
        - resource_type (required)
        - tag_keys (required)
EOT

  type = map(object({
    deliver_cross_account_role    = optional(string)
    eni_id                        = optional(string)
    iam_role_arn                  = optional(string)
    log_destination               = optional(string)
    log_destination_type          = optional(string)
    log_format                    = optional(string)
    max_aggregation_interval      = optional(number)
    region                        = optional(string)
    regional_nat_gateway_id       = optional(string)
    subnet_id                     = optional(string)
    tags                          = optional(map(string))
    tags_all                      = optional(map(string))
    traffic_type                  = optional(string)
    transit_gateway_attachment_id = optional(string)
    transit_gateway_id            = optional(string)
    vpc_id                        = optional(string)
    destination_options = optional(object({
      file_format                = optional(string)
      hive_compatible_partitions = optional(bool)
      per_hour_partition         = optional(bool)
    }))
    tag_field_specification = optional(list(object({
      resource_type = string
      tag_keys      = list(string)
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.flow_logs : (
        v.max_aggregation_interval == null || (contains([60, 600], v.max_aggregation_interval))
      )
    ])
    error_message = "must be one of: 60, 600"
  }
  # Note: 7 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

