# main.tf

terraform {
  required_providers {
    virtualbox = {
      source  = "terra-farm/virtualbox" 
      version = "0.2.2-alpha.1" 
    }
  }
}

provider "virtualbox" {}

resource "virtualbox_vm" "ubuntu_vm" {
  name  = var.vm_name
  image = "https://app.vagrantup.com/ubuntu/boxes/bionic64/versions/20180903.0.0/providers/virtualbox.box"
  cpus   = 1
  memory = var.vm_memory

  network_adapter { 
    type = "nat"
  }
}