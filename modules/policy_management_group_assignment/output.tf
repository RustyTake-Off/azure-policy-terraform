output "management_group_set_assignment_id" {
  value = azurerm_management_group_policy_assignment.management_group_assignment[*].id
}

output "management_group_set_assignment_name" {
  value = azurerm_management_group_policy_assignment.management_group_assignment[*].name
}
