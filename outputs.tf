output "waiting_room_rules_id" {
  description = "Map of id values across all waiting_room_rules, keyed the same as var.waiting_room_rules except keys with no id are omitted"
  value       = { for k, v in cloudflare_waiting_room_rules.waiting_room_rules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "waiting_room_rules_rules" {
  description = "Map of rules values across all waiting_room_rules, keyed the same as var.waiting_room_rules except keys with no rules are omitted"
  value       = { for k, v in cloudflare_waiting_room_rules.waiting_room_rules : k => v.rules if v.rules != null && length(v.rules) > 0 }
}
output "waiting_room_rules_waiting_room_id" {
  description = "Map of waiting_room_id values across all waiting_room_rules, keyed the same as var.waiting_room_rules except keys with no waiting_room_id are omitted"
  value       = { for k, v in cloudflare_waiting_room_rules.waiting_room_rules : k => v.waiting_room_id if v.waiting_room_id != null && length(v.waiting_room_id) > 0 }
}
output "waiting_room_rules_zone_id" {
  description = "Map of zone_id values across all waiting_room_rules, keyed the same as var.waiting_room_rules except keys with no zone_id are omitted"
  value       = { for k, v in cloudflare_waiting_room_rules.waiting_room_rules : k => v.zone_id if v.zone_id != null && length(v.zone_id) > 0 }
}

