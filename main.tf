provider "azurerm" {
  features {}
}

# Reference the existing resource group
data "azurerm_resource_group" "main" {
  name = "rg-learn-terraform"
}

# Virtual Network
resource "azurerm_virtual_network" "main" {
  name                = "vnet-learn-terraform"
  location            = data.azurerm_resource_group.main.location
  resource_group_name = data.azurerm_resource_group.main.name

  address_space = ["10.0.0.0/16"]
}

# Subnet
resource "azurerm_subnet" "main" {
  name                 = "subnet-app"
  resource_group_name  = data.azurerm_resource_group.main.name
  virtual_network_name = azurerm_virtual_network.main.name

  address_prefixes = ["10.0.1.0/24"]
}

# Network Security Group
resource "azurerm_network_security_group" "main" {
  name                = "nsg-learn-terraform"
  location            = data.azurerm_resource_group.main.location
  resource_group_name = data.azurerm_resource_group.main.name
}

# Associate NSG with subnet
resource "azurerm_subnet_network_security_group_association" "main" {
  subnet_id                 = azurerm_subnet.main.id
  network_security_group_id = azurerm_network_security_group.main.id
}

# Public IP
resource "azurerm_public_ip" "main" {
  name                = "pip-learn-terraform"
  location            = data.azurerm_resource_group.main.location
  resource_group_name = data.azurerm_resource_group.main.name

  allocation_method = "Static"
  sku               = "Standard"
}
