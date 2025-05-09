# create a resource group with the label "rg"
resource "azurerm_resource_group" "rg" {
  name     = var.rg_name                      # provided by input variable
  location = var.build_location               # provided by input variable
}

# Create a virtual network
resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet
  address_space       = ["10.125.0.0/22"]
  location            = var.build_location
  resource_group_name = azurerm_resource_group.rg.name
}

