variable "instance_name" {
  description = "Name of the Azure Linux virtual machine."
  type        = string
  default     = "learn-terraform"
}

variable "instance_type" {
  description = "Azure VM size."
  type        = string
  default     = "Standard_B1s"
}

variable "location" {
  description = "Azure region where resources will be created."
  type        = string
  default     = "East US"
}

variable "admin_username" {
  description = "Administrator username for the Linux VM."
  type        = string
  default     = "azureadmin"
}

variable "ssh_public_key" {
  description = "SSH public key used to access the Linux VM."
  type        = string
  sensitive   = true
}
