module "set_definition" {
  source   = "./modules/set_definition"
  for_each = { for k, v in try(local.policy.set_definitions, {}) : k => v }

  settings    = try(each.value.set, {})
  assignments = try(each.value.assignments, {})
}
