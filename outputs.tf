output "resource_group_name" {
  description = "Name of the existing Azure resource group."
  value       = data.azurerm_resource_group.main.name
}

output "vnet_name" {
  description = "Name of the Azure virtual network."
  value       = azurerm_virtual_network.main.name
}

output "vnet_id" {
  description = "ID of the Azure virtual network."
  value       = azurerm_virtual_network.main.id
}

output "subnet_name" {
  description = "Name of the Azure subnet."
  value       = azurerm_subnet.main.name
}

output "subnet_id" {
  description = "ID of the Azure subnet."
  value       = azurerm_subnet.main.id
}

output "network_security_group_name" {
  description = "Name of the network security group."
  value       = azurerm_network_security_group.main.name
}

output "network_security_group_id" {
  description = "ID of the network security group."
  value       = azurerm_network_security_group.main.id
}

output "public_ip_name" {
  description = "Name of the public IP."
  value       = azurerm_public_ip.main.name
}

output "public_ip_address" {
  description = "Public IP address."
  value       = azurerm_public_ip.main.ip_address
}
