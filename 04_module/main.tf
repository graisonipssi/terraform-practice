# exos/04_module/main.tf

terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {
  host = "npipe:////.//pipe//docker_engine"
}

module "site_web_1" {
  source = "./modules/nginx"
  
  container_name = "nginx-module-1" 
  external_port  = 8080
}

module "site_web_2" {
  source = "./modules/nginx"
  
  container_name = "nginx-module-2" 
  external_port  = 9090
}