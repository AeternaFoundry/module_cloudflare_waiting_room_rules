variable "waiting_room_rules" {
  description = <<EOT
Map of waiting_room_rules, attributes below
Required:
    - rules
    - waiting_room_id
    - zone_id
EOT

  type = map(object({
    rules = list(object({
      action      = string
      description = optional(string)
      enabled     = optional(bool)
      expression  = string
    }))
    waiting_room_id = string
    zone_id         = string
  }))
}

