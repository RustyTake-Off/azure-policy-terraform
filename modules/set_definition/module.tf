data "azurerm_management_group" "management_group" {
  count = try(var.settings.management_group, "") != "" ? 1 : 0
  name  = try(var.settings.management_group, "")
}

resource "azurerm_policy_set_definition" "set_definition" {
  name                = var.settings.name
  display_name        = var.settings.display_name
  description         = try(var.settings.description, null)
  policy_type         = try(var.settings.policy_type, "Custom")
  management_group_id = try(data.azurerm_management_group.management_group[0].id, null)

  metadata   = jsonencode(try(var.settings.metadata, null))
  parameters = jsonencode(try(var.settings.parameters, null))

  dynamic "policy_definition_reference" {
    for_each = try(var.settings.policy_definition_reference, {})

    content {
      policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/${policy_definition_reference.value.policy_definition_id}"
      reference_id         = lower(replace(try(policy_definition_reference.value.reference_id, "reference_id_${policy_definition_reference.key}"), " ", "_"))
      parameter_values     = jsonencode(try(policy_definition_reference.value.parameter_values, null))
      policy_group_names   = try(policy_definition_reference.value.policy_group_names, null)
    }
  }

  dynamic "policy_definition_group" {
    for_each = try(var.settings.policy_definition_group, {})

    content {
      name                            = policy_definition_group.value.name
      display_name                    = try(policy_definition_group.value.display_name, null)
      description                     = try(policy_definition_group.value.description, null)
      category                        = try(policy_definition_group.value.category, null)
      additional_metadata_resource_id = try(policy_definition_group.value.additional_metadata_resource_id, null)
    }
  }
}

module "policy_management_group_assignment" {
  source   = "../policy_management_group_assignment"
  for_each = try(var.assignments.management_groups, {})

  management_group            = try(each.value, {})
  settings                    = try(var.settings, {})
  policy_definition_reference = try(var.settings.policy_definition_reference, {})
  scope                       = azurerm_policy_set_definition.set_definition.id
}

module "policy_subscription_assignment" {
  source   = "../policy_subscription_assignment"
  for_each = try(var.assignments.subscriptions, {})

  subscription                = try(each.value, {})
  settings                    = try(var.settings, {})
  policy_definition_reference = try(var.settings.policy_definition_reference, {})
  scope                       = azurerm_policy_set_definition.set_definition.id
}

module "policy_resource_group_assignment" {
  source   = "../policy_resource_group_assignment"
  for_each = try(var.assignments.resource_groups, {})

  resource_group              = try(each.value, {})
  settings                    = try(var.settings, {})
  policy_definition_reference = try(var.settings.policy_definition_reference, {})
  scope                       = azurerm_policy_set_definition.set_definition.id
}

module "policy_resource_assignment" {
  source   = "../policy_resource_assignment"
  for_each = try(var.assignments.resources, {})

  resource                    = try(each.value, {})
  settings                    = try(var.settings, {})
  policy_definition_reference = try(var.settings.policy_definition_reference, {})
  scope                       = azurerm_policy_set_definition.set_definition.id
}
