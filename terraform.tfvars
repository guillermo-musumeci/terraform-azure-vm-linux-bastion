####################
# Common Variables #
####################
company     = "kopicloud"
app_name    = "iaas"
environment = "development"
location    = "northeurope"

##################
# Authentication #
##################
azure-subscription-id = ""
azure-client-id       = ""
azure-client-secret   = ""
azure-tenant-id       = ""

###########
# Network #
###########
network-vnet-cidr   = "10.128.0.0/16"
network-subnet-cidr = "10.128.1.0/24"

####################
# Bastion Linux VM #
####################
bastion-linux-vm-hostname    = "bastionlnx1"
bastion-linux-vm-size        = "Standard_B2s"
bastion-linux-admin-username = "tfadmin"
bastion-linux-admin-password = "S3cr3ts24"
