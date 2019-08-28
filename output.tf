# ID of Linux VM
output "bastion-linux-id" {
   value = "${azurerm_virtual_machine.tf-bastion-linux-vm.id}"
}

# Public IP of Bastion-linux VM
output "bastion-linux-public-ip" {
   value = "${azurerm_public_ip.tf-bastion-linux-ip.ip_address}"
}