# outputs.tf

output "vm_ip_address" {
  description = "Adresse IP locale de la VM VirtualBox"
  value       = virtualbox_vm.ubuntu_vm.network_adapter.0.ipv4_address
}