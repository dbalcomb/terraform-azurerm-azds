module "azds" {
  source = "../../"

  name = "azds"

  cluster = {
    id         = "00000000-0000-0000-0000-000000000000"
    group      = "my-resource-group"
    region     = "uksouth"
    kubeconfig = "..."
  }

  tags = {
    custom = "true"
  }
}
