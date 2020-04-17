module "controller" {
  source = "./modules/controller"

  name    = var.name
  cluster = var.cluster
  tags    = var.tags
}
