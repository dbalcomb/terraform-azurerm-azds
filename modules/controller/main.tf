locals {
  tags = merge({
    environment = "production"
    provisioner = "terraform"
    component   = "azds"
  }, var.tags)
}

resource "azurerm_devspace_controller" "main" {
  name                                     = var.name
  resource_group_name                      = var.cluster.group
  location                                 = var.cluster.region
  target_container_host_resource_id        = var.cluster.id
  target_container_host_credentials_base64 = base64encode(var.cluster.kubeconfig)
  tags                                     = local.tags
  sku_name                                 = "S1"
}
