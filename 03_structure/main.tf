# main.tf

terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "nginx_image" {
  name         = "nginx:latest"
  keep_locally = false
}

resource "docker_container" "nginx_container" {
  name  = "mon-nginx-docker-2-1"
  image = docker_image.nginx_image.name

  ports {
    internal = 80
    external = var.external_port
  }
}