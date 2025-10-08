# variables.tf

variable "container_name" {
  description = "Nom unique du conteneur Nginx"
  type        = string
  # PAS de "default" -> cette variable DOIT être fournie par le module appelant.
}

variable "external_port" {
  description = "Port d'écoute sur l'hôte"
  type        = number
  # PAS de "default" -> cette variable DOIT être fournie par le module appelant.
}

variable "docker_image" {
  description = "Image Docker à utiliser"
  type        = string
  # On peut laisser un défaut pour l'image si c'est toujours Nginx
  default     = "nginx:latest" 
}