output "id" {
  description = "The Azure Dev Space identifier"
  value       = azurerm_devspace_controller.main.id
}

output "name" {
  description = "The Azure Dev Space name"
  value       = azurerm_devspace_controller.main.name
}

output "cluster" {
  description = "The Azure Kubernetes Service cluster configuration"
  value       = var.cluster
  sensitive   = true
}

output "data_plane_fqdn" {
  description = "The Azure Dev Space DataPlane DNS name"
  value       = azurerm_devspace_controller.main.data_plane_fqdn
}

output "host_suffix" {
  description = "The Azure Dev Space hostname suffix"
  value       = azurerm_devspace_controller.main.host_suffix
}
