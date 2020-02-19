#########################################
## Deploy Linux Bastion VM - Variables ##
#########################################

# Linux Bastion VM Admin User
variable "bastion-linux-admin-username" {
  type        = string
  description = "Linux Bastion VM Admin User"
  default     = "tfadmin"
}

# Linux Bastion VM Admin Password
variable "bastion-linux-admin-password" {
  type        = string
  description = "Linux Bastion VM Admin Password"
  default     = "S3cr3ts24"
}

# Linux Bastion VM Hostname
variable "bastion-linux-vm-hostname" {
  type        = string
  description = "Linux Bastion VM Hostname"
  default     = "bastionlnx1"
}

# Linux Bastion VM Virtual Machine Size
variable "bastion-linux-vm-size" {
  type        = string
  description = "Linux Bastion VM Size"
  default     = "Standard_B2s"
}
