# variables.tf

variable "external_port" {
  description = "Port externe exposé du conteneur Nginx"
  type        = number
  default     = 9090
}