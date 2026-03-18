terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

# List of containers
variable "container_config" {
  default = [
    {
      name = "web1"
      port = 8081
    },
    {
      name = "web2"
      port = 8082
    },
    {
      name = "web3"
      port = 8083
    },
    {
      name = "web4"
      port = 8084
    }
  ]
}

# Dynamic module creation
module "containers" {
  source = "./modules/nginx_container"

  for_each = {
    for c in var.container_config : c.name => c
  }

  container_name = each.value.name
  container_port = each.value.port
  image_name     = "nginx:latest"
}

output "container_urls" {
  value = [
    for c in var.container_config :
    "http://localhost:${c.port}"
  ]
}
