# ======================= #
# Deploy Linux Bastion VM #
# ======================= #

# Configure the Azure Provider
provider "azurerm" { }

# Create Resource Group
resource "azurerm_resource_group" "tf-rg" {
  name = "${var.prefix}-rg-${var.environment}"
  location = "${var.rg-location}"
}

# Create a virtual network
resource "azurerm_virtual_network" "tf-vnet" {
  name                = "${var.prefix}-vnet-${var.environment}"
  resource_group_name = "${azurerm_resource_group.tf-rg.name}"
  location            = "${var.rg-location}"
  address_space       = ["${var.vnet-cidr}"]
  
  tags = { 
    environment = "${var.environment}" 
  }
}

# Create Security Group to Access Bastion VM from Internet
resource "azurerm_network_security_group" "tf-bastion-nsg" {
  name                = "${var.prefix}-bastion-nsg-${var.environment}"
  location            = "${azurerm_resource_group.tf-rg.location}"
  resource_group_name = "${azurerm_resource_group.tf-rg.name}"

  security_rule {
    name                       = "AllowSSH"
    description                = "Allow SSH"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "Internet"
    destination_address_prefix = "*"
  }

  tags = {
    environment = "${var.environment}" 
  }
}

# Create a subnet for managmenent VMs
resource "azurerm_subnet" "tf-subnet-mgmt" {
  name                 = "${var.prefix}-subnet-mgmt-${var.environment}"
  resource_group_name  = "${azurerm_resource_group.tf-rg.name}"
  virtual_network_name = "${azurerm_virtual_network.tf-vnet.name}"
  address_prefix       = "${var.mgmt-subnet-cidr}"
}

# Associate the Bastion NSG with the Management Subnet
resource "azurerm_subnet_network_security_group_association" "tf-bastion-nsg-association" {
  subnet_id                 = "${azurerm_subnet.tf-subnet-mgmt.id}"
  network_security_group_id = "${azurerm_network_security_group.tf-bastion-nsg.id}"
}

# Get a Static Public IP for Bastion
resource "azurerm_public_ip" "tf-bastion-linux-ip" {
  name                = "${var.prefix}-bastion-linux-ip-${var.environment}"
  location            = "${azurerm_resource_group.tf-rg.location}"
  resource_group_name = "${azurerm_resource_group.tf-rg.name}"
  allocation_method   = "Static"
  
  tags = { 
    environment = "${var.environment}" 
  }
}

# Create Network Card for Bastion VM
resource "azurerm_network_interface" "tf-bastion-linux-nic" {
  name                      = "${var.prefix}-bastion-linux-nic-${var.environment}"
  location                  = "${azurerm_resource_group.tf-rg.location}"
  resource_group_name       = "${azurerm_resource_group.tf-rg.name}"
  network_security_group_id = "${azurerm_network_security_group.tf-bastion-nsg.id}"

  ip_configuration {
    name                          = "internal"
    subnet_id                     = "${azurerm_subnet.tf-subnet-mgmt.id}"
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = "${azurerm_public_ip.tf-bastion-linux-ip.id}"
  }

  tags = { 
    environment = "${var.environment}" 
  }
}

# Create Linux Bastion Server
resource "azurerm_virtual_machine" "tf-bastion-linux-vm" {
  name                  = "${var.prefix}-bastion-linux-vm-${var.environment}"
  location              = "${azurerm_resource_group.tf-rg.location}"
  resource_group_name   = "${azurerm_resource_group.tf-rg.name}"
  network_interface_ids = ["${azurerm_network_interface.tf-bastion-linux-nic.id}"]
  vm_size               = "Standard_B1s"

  # Comment this line to keep the OS disk when deleting the VM
  delete_os_disk_on_termination = true
  # Comment this line to keep the data disks when deleting the VM
  delete_data_disks_on_termination = true

  storage_image_reference {
    publisher = "${var.ubuntu-linux-publisher}"
    offer     = "${var.ubuntu-linux-offer}"    
    sku       = "${var.ubuntu-linux-19-sku}"
    version   = "latest"
  }
  storage_os_disk {
    name              = "${var.prefix}-bastion-linux-vm-os-disk-${var.environment}"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "${var.tf-bastion-linux-vm-hostname}"
    admin_username = "${var.tf-bastion-linux-admin-user}"
    admin_password = "${var.tf-bastion-linux-admin-password}"
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
  tags = {
    environment = "${var.environment}"
  }
}
