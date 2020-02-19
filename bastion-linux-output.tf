######################################
## Deploy Linux Bastion VM - Output ##
######################################

# Bastion Linux VM ID
output "bastion_linux_vm_id" {
  value = azurerm_virtual_machine.bastion-linux-vm.id
}

# Bastion Linux VM Username
output "bastion_linux_vm_username" {
  value = var.bastion-linux-admin-username
}

# Bastion Linux VM Password
output "bastion_linux_vm_password" {
  value = var.bastion-linux-admin-password
}

# Bastion Linux VM Public IP
output "bastion_linux_public_ip" {
  value = azurerm_public_ip.bastion-linux-ip.ip_address
}