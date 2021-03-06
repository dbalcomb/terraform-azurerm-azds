# terraform-azurerm-azds

Terraform modules for [Azure Dev Spaces][azds].

## Usage

```hcl
module "aks" {
  source = "github.com/dbalcomb/terraform-azurerm-aks"

  # ...
}

module "azds" {
  source = "github.com/dbalcomb/terraform-azurerm-azds"

  name    = "azds"
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

## Modules

- [Controller](modules/controller/README.md)

## References

- [Azure Dev Spaces](https://docs.microsoft.com/en-gb/azure/dev-spaces)

[azds]: https://docs.microsoft.com/en-gb/azure/dev-spaces/about
