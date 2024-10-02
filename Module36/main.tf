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
  name     = var.rgname
  location = var.az_regions[0]
  tags     = local.common_tags
}

resource "azurerm_storage_account" "sa-ja" {
  name                     = var.saname
  resource_group_name      = azurerm_resource_group.rg-ja.name
  location                 = azurerm_resource_group.rg-ja.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
  tags                     = local.common_tags
}

output "said" {
  value = azurerm_storage_account.sa-ja.id
}