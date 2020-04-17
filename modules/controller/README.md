# Controller

This module configures an Azure Dev Space controller for an existing Azure
Kubernetes Service cluster. The controller is responsible for setting up a
custom ingress controller which routes traffic under a unique hostname per
space.

## Usage

```hcl
module "aks" {
  source = "github.com/dbalcomb/terraform-azurerm-aks"

  # ...
}

module "azds_controller" {
  source = "github.com/dbalcomb/terraform-azurerm-azds//modules/controller"

  name    = "azds-controller"
  cluster = module.aks.cluster
}
```

## Inputs

| Name                 | Type     | Default | Description                                        |
| -------------------- | -------- | ------- | -------------------------------------------------- |
| `name`               | `string` |         | The Azure Dev Space name                           |
| `cluster`            | `object` |         | The Azure Kubernetes Service cluster configuration |
| `cluster.id`         | `string` |         | The cluster identifier                             |
| `cluster.group`      | `string` |         | The cluster group                                  |
| `cluster.region`     | `string` |         | The cluster region                                 |
| `cluster.kubeconfig` | `string` |         | The cluster Kubernetes configuration               |
| `tags`               | `object` | `{}`    | The resource tags                                  |
| `tags.*`             | `string` |         | The tag value                                      |

## Outputs

| Name              | Type     | Description                                        |
| ----------------- | -------- | -------------------------------------------------- |
| `id`              | `string` | The Azure Dev Space identifier                     |
| `name`            | `string` | The Azure Dev Space name                           |
| `cluster`         | `object` | The Azure Kubernetes Service cluster configuration |
| `data_plane_fqdn` | `string` | The Azure Dev Space DataPlane DNS name             |
| `host_suffix`     | `string` | The Azure Dev Space hostname suffix                |

## References

- [Installing Azure Dev Spaces](https://docs.microsoft.com/en-gb/azure/dev-spaces/how-to/install-dev-spaces)
