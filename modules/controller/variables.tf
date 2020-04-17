variable "name" {
  description = "The Azure Dev Space name"
  type        = string
}

variable "cluster" {
  description = "The Azure Kubernetes Service cluster configuration"
  type = object({
    id         = string
    group      = string
    region     = string
    kubeconfig = string
  })
}

variable "tags" {
  description = "The resource tags"
  default     = {}
  type        = map(string)
}
