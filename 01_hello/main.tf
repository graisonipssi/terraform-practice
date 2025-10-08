# main.tf

terraform {
  required_version = ">= 1.6.0"
}
resource "null_resource" "hello" {
  provisioner "local-exec" {
    command = "echo Hello Terraform!"
  }
}