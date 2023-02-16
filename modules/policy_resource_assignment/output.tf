output "resource_set_assignment_id" {
  value = azurerm_resource_policy_assignment.resource_assignment[*].id
}

output "resource_set_assignment_name" {
  value = azurerm_resource_policy_assignment.resource_assignment[*].name
}
