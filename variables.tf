# ============================== #
# Declare variables and defaults #
# ============================== #

# Prefix used to name objects
variable "prefix" {
    description = "Prefix used to name objects"
    type        = "string"
    default     = "tf-poc"
}

# Environment
variable "environment" {
    description = "Name of environment to deploy"
    type        = "string"
    default     = "mgmt"
}

# Location Resource Group
variable "rg-location" {
    description = "Location of Resource Group"
    type        = "string"
    default     = "West Europe"
}

# Vnet CIDR
variable "vnet-cidr" {
    description = "Vnet CIDR"
    type        = "string"
    default     = "10.100.0.0/16"
}

# CIDR of Management Subnet
variable "mgmt-subnet-cidr" {
    description = "CIDR of Management Subnet"
    type        = "string"
    default     = "10.100.0.0/24"
}

# Linux Bastion VM Admin User
variable "tf-bastion-linux-admin-user" {
    description = "Linux Bastion VM Admin User"
    type        = "string"
    default     = "tfadmin"
}

# Linux Bastion VM Admin Password
variable "tf-bastion-linux-admin-password" {
    description = "Linux Bastion VM Admin Password"
    type        = "string"
    default     = "S3cr3t0s"
}

# Linux Bastion VM Hostname
variable "tf-bastion-linux-vm-hostname" {
    description = "Linux Bastion VM Hostname"
    type        = "string"
    default     = "tfbastionwlnx1"
}
