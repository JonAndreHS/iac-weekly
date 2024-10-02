terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.0.1"
    }
  }
}

provider "azurerm" {
  subscription_id = "7c064ed9-c59f-4935-938b-f1a654d088a7"
  features {}
}

resource "azurerm_resource_group" "rg-ja" {
  count    = length(var.resource_group_name)
  name     = var.resource_group_name[count.index]
  location = var.location
  tags     = local.common_tags
}

resource "azurerm_network_security_group" "nsg-ja" {
  name                = var.network_security_group_name
  location            = azurerm_resource_group.rg-ja[0].location
  resource_group_name = azurerm_resource_group.rg-ja[0].name
  tags                = local.common_tags
}

resource "azurerm_virtual_network" "vnet-ja" {
  count               = length(var.virtual_network_names)
  name                = var.virtual_network_names[count.index]
  location            = azurerm_resource_group.rg-ja[0].location
  resource_group_name = azurerm_resource_group.rg-ja[0].name
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4", "10.0.0.5"]
  tags                = local.common_tags

  subnet {
    name             = "subnet1"
    address_prefixes = ["10.0.1.0/24"]
    security_group   = azurerm_network_security_group.nsg-ja.id
  }

  subnet {
    name             = "subnet2"
    address_prefixes = ["10.0.2.0/24"]
    security_group   = azurerm_network_security_group.nsg-ja.id
  }
}

resource "azurerm_storage_account" "sa-ja" {
  count                    = length(var.storage_account_names)
  name                     = var.storage_account_names[count.index]
  resource_group_name      = azurerm_resource_group.rg-ja[1].name
  location                 = azurerm_resource_group.rg-ja[1].location
  account_tier             = "Standard"
  account_replication_type = "GRS"
  tags                     = local.common_tags
}