terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
    }
  }
}

resource "docker_image" "nginx" {
  name = var.image_name
}

resource "docker_container" "nginx" {
  name  = var.container_name
  image = docker_image.nginx.name

  ports {
    internal = 80
    external = var.container_port
  }
}
