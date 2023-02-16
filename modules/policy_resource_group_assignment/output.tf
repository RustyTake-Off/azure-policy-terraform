output "resource_group_set_assignment_id" {
  value = azurerm_resource_group_policy_assignment.resource_group_assignment[*].id
}

output "resource_group_set_assignment_name" {
  value = azurerm_resource_group_policy_assignment.resource_group_assignment[*].name
}
