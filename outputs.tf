output "resource_group_name" {
  description = "Name of the Azure resource group."
  value       = azurerm_resource_group.main.name
}

output "vm_name" {
  description = "Name of the Azure Linux virtual machine."
  value       = azurerm_linux_virtual_machine.app_server.name
}

output "vm_private_ip" {
  description = "Private IP address of the Azure VM."
  value       = azurerm_network_interface.main.private_ip_address
}

output "vm_public_ip" {
  description = "Public IP address of the Azure VM."
  value       = azurerm_public_ip.main.ip_address
}

output "subnet_id" {
  description = "ID of the Azure subnet."
  value       = azurerm_subnet.main.id
}

output "network_security_group_id" {
  description = "ID of the Azure network security group."
  value       = azurerm_network_security_group.main.id
}

output "ssh_command" {
  description = "SSH command for connecting to the VM."
  value       = "ssh ${var.admin_username}@${azurerm_public_ip.main.ip_address}"
}
