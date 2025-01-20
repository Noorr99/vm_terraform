output "vm_name" {
  description = "Name of the VM"
  value       = azurerm_linux_virtual_machine.vm.name
}

output "public_ip_address" {
  description = "Public IP address of the VM"
  value       = azurerm_public_ip.public_ip.ip_address
}
