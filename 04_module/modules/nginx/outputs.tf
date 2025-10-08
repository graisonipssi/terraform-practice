# outputs.tf

output "nginx_container_name" {
  description = "Nom du conteneur Nginx déployé"
  value       = docker_container.nginx_container.name
}