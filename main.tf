resource "cloudflare_waiting_room_rules" "waiting_room_rules" {
  for_each = var.waiting_room_rules

  rules           = each.value.rules
  waiting_room_id = each.value.waiting_room_id
  zone_id         = each.value.zone_id
}

