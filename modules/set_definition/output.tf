output "set_definition_id" {
  value = azurerm_policy_set_definition.set_definition.id
}

output "set_definition_name" {
  value = azurerm_policy_set_definition.set_definition.name
}

output "assignment_to_management_groups" {
  value = module.policy_management_group_assignment
}

output "assignment_to_subscriptions" {
  value = module.policy_subscription_assignment
}

output "assignment_to_resource_groups" {
  value = module.policy_resource_group_assignment
}

output "assignment_to_resources" {
  value = module.policy_resource_assignment
}
