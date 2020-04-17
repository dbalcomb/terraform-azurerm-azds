output "id" {
  description = "The Azure Dev Space identifier"
  value       = module.controller.id
}

output "name" {
  description = "The Azure Dev Space name"
  value       = module.controller.name
}

output "cluster" {
  description = "The Azure Kubernetes Service cluster configuration"
  value       = var.cluster
  sensitive   = true
}

output "data_plane_fqdn" {
  description = "The Azure Dev Space DataPlane DNS name"
  value       = module.controller.data_plane_fqdn
}

output "host_suffix" {
  description = "The Azure Dev Space hostname suffix"
  value       = module.controller.host_suffix
}
