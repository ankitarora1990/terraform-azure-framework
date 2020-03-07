# Configure the Microsoft Azure Provider.
provider "azurerm" {
  version = "~>1.44.0"

  # Subscription details (Will be passed directly while init)
}

terraform {
  backend "azurerm" {}
}

# Create a resource group
resource "azurerm_resource_group" "arg" {
  name     = "rg-${var.env}-learning"
  location = var.location
}

# Create a container registery
resource "azurerm_container_registry" "acr" {
  name                = "${var.env}Registry"
  resource_group_name = azurerm_resource_group.arg.name
  location            = azurerm_resource_group.arg.location
  sku                 = var.sku
}