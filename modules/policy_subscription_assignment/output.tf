output "subscription_set_assignment_id" {
  value = azurerm_subscription_policy_assignment.subscription_assignment[*].id
}

output "subscription_set_assignment_name" {
  value = azurerm_subscription_policy_assignment.subscription_assignment[*].name
}
