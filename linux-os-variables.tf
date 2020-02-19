##################
## Ubuntu Linux ##
##################

# Ubuntu Linux Publisher used to build VMs
variable "ubuntu-linux-publisher" {
    description = "Ubuntu Linux Publisher used to build VMs"
    type        = "string"
    default     = "Canonical"
}

# Ubuntu Linux Offer used to build VMs
variable "ubuntu-linux-offer" {
    description = "Ubuntu Linux Offer used to build VMs"
    type        = "string"
    default     = "UbuntuServer"
}

# Ubuntu Linux 19.x SKU used to build VMs
variable "ubuntu-linux-19-sku" {
    description = "Ubuntu Linux Server SKU used to build VMs"
    type        = "string"
    default     = "19.04"
}

# Ubuntu Linux 18.x SKU used to build VMs
variable "ubuntu-linux-18-sku" {
    description = "Ubuntu Linux Server SKU used to build VMs"
    type        = "string"
    default     = "18.04-LTS"
}

# Ubuntu Linux 16.x SKU used to build VMs
variable "ubuntu-linux-16-sku" {
    description = "Ubuntu Linux Server SKU used to build VMs"
    type        = "string"
    default     = "16.04.0-LTS"
}

##################
## CentOS Linux ##
##################

# CentOS Linux Publisher used to build VMs
variable "centos-linux-publisher" {
    description = "CentOS Linux Publisher used to build VMs"
    type        = "string"
    default     = "OpenLogic"
}

# CentOS Linux Offer used to build VMs
variable "centos-linux-offer" {
    description = "CentOS Linux Offer used to build VMs"
    type        = "string"
    default     = "CentOS"
}

# CentOS Linux SKU used to build VMs
variable "centos-linux-76-sku" {
    description = "CentOS Linux Server SKU used to build VMs"
    type        = "string"
    default     = "7.6"
}

# CentOS Linux SKU used to build VMs
variable "centos-linux-75-sku" {
    description = "CentOS Linux Server SKU used to build VMs"
    type        = "string"
    default     = "7.5"
}

# CentOS Linux SKU used to build VMs
variable "centos-linux-74-sku" {
    description = "CentOS Linux Server SKU used to build VMs"
    type        = "string"
    default     = "7.4"
}

##################
## RedHat Linux ##
##################

# RedHat Linux Publisher used to build VMs
variable "redhat-linux-publisher" {
    description = "RedHat Linux Publisher used to build VMs"
    type        = "string"
    default     = "RedHat"
}

# RedHat Linux Offer used to build VMs
variable "redhat-linux-offer" {
    description = "RedHat Linux Offer used to build VMs"
    type        = "string"
    default     = "RHEL"
}

# RedHat Linux 8 SKU used to build VMs
variable "redhat-linux-8-sku" {
    description = "RedHat Linux Server SKU used to build VMs"
    type        = "string"
    default     = "8"
}

# RedHat Linux 76 SKU used to build VMs
variable "redhat-linux-76-sku" {
    description = "RedHat Linux Server SKU used to build VMs"
    type        = "string"
    default     = "7.6"
}

# RedHat Linux 75 SKU used to build VMs
variable "redhat-linux-75-sku" {
    description = "RedHat Linux Server SKU used to build VMs"
    type        = "string"
    default     = "7.5"
}

##################
## Debian Linux ##
##################

# Debian Linux Publisher used to build VMs
variable "debian-linux-publisher" {
    description = "Debian Linux Publisher used to build VMs"
    type        = "string"
    default     = "Debian"
}

# Debian Linux Offer used to build VMs
variable "debian-linux-offer" {
    description = "Debian Linux Offer used to build VMs"
    type        = "string"
    default     = "debian-10"
}

# Debian Linux 10 SKU used to build VMs
variable "debian-linux-10-sku" {
    description = "Debian Linux Server SKU used to build VMs"
    type        = "string"
    default     = "10"
}

################
## SUSE Linux ##
################

# SUSE Linux Publisher used to build VMs
variable "suse-linux-publisher" {
    description = "SUSE Enterprise Linux Publisher used to build VMs"
    type        = "string"
    default     = "SUSE"
}

# SUSE Linux Offer used to build VMs
variable "suse-linux-offer" {
    description = "SUSE Enterprise Linux Offer used to build VMs"
    type        = "string"
    default     = "SLES"
}

# SUSE Enterprise Linux 15 SKU used to build VMs
variable "suse-linux-15-sku" {
    description = "SUSE Enterprise Linux Server SKU used to build VMs"
    type        = "string"
    default     = "15"
}

# SUSE Enterprise Linux 12 SKU used to build VMs
variable "suse-linux-12-sp4-sku" {
    description = "SUSE Enterprise Linux Server SKU used to build VMs"
    type        = "string"
    default     = "12-SP4"
}

####################
## OpenSUSE Linux ##
####################

# SUSE Linux Publisher used to build VMs
variable "opensuse-linux-publisher" {
    description = "OpenSUSE Linux Publisher used to build VMs"
    type        = "string"
    default     = "SUSE"
}

# SUSE Linux Offer used to build VMs
variable "opensuse-linux-offer" {
    description = "OpenSUSE Linux Offer used to build VMs"
    type        = "string"
    default     = "openSUSE-Leap"
}

# Open SUSE Linux Leap 15-1 SKU used to build VMs
variable "opensuse-linux-15-1-sku" {
    description = "OpenSUSE Linux Server SKU used to build VMs"
    type        = "string"
    default     = "15-1"
}

# Open SUSE Linux Leap 15-0 SKU used to build VMs
variable "opensuse-linux-15-0-sku" {
    description = "OpenSUSE Linux Server SKU used to build VMs"
    type        = "string"
    default     = "15-0"
}
