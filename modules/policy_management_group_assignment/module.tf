data "azurerm_management_group" "management_group" {
  count = try(var.management_group.scope_management_group_name, null) != null ? 1 : 0
  name  = try(var.management_group.scope_management_group_name, null)
}

resource "azurerm_management_group_policy_assignment" "management_group_assignment" {
  count = try(data.azurerm_management_group.management_group[0].id, null) != null ? 1 : 0

  name         = try(var.management_group.name, null)
  display_name = try(var.management_group.display_name, null)
  description  = try(var.management_group.description, null)
  enforce      = try(var.management_group.enforce, true)

  location = try(var.management_group.location, null)

  management_group_id  = try(data.azurerm_management_group.management_group[0].id, null)
  policy_definition_id = try(var.scope, null)
  not_scopes           = try(var.management_group.not_scopes, null)

  dynamic "non_compliance_message" {
    for_each = { for k, v in merge(
      { for k, v in var.policy_definition_reference : k => {
        non_compliance_message = try(v.non_compliance_message, "(Autogenerated) This policy is not compliant!")
        reference_id           = try(v.reference_id, "reference_id_${k}")
        }
      },
      {
        general_non_compliance_message = {
          non_compliance_message = try(var.management_group.non_compliance_message, "(Autogenerated) This policy is not compliant!")
        }
      }
    ) : k => v }

    content {
      content                        = try(non_compliance_message.value.non_compliance_message, null)
      policy_definition_reference_id = try(non_compliance_message.value.reference_id, null)
    }
  }

  identity {
    type         = try(var.management_group.provided_ids, null) != null ? "UserAssigned" : "SystemAssigned"
    identity_ids = try(var.management_group.provided_ids, null)
  }

  metadata   = jsonencode(try(var.management_group.metadata, null))
  parameters = jsonencode(try(var.management_group.parameters, null))
}
