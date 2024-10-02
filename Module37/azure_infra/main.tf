terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.2.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "7c064ed9-c59f-4935-938b-f1a654d088a7"
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.rgname
  location = var.location
}

module "network" {
  source     = "./modules/network"
  rgname     = azurerm_resource_group.rg.name
  location   = azurerm_resource_group.rg.location
  vnetname   = var.vnetname
  nsgname    = var.nsgname
  subnetname = var.subnetname
}

module "database" {
  source          = "./modules/database"
  rgname          = azurerm_resource_group.rg.name
  location        = azurerm_resource_group.rg.location
  saname          = var.saname
  mssqldbname     = var.mssqldbname
  mssqlservername = var.mssqlservername
}

module "vmss" {
  source    = "./modules/vmss"
  rgname    = azurerm_resource_group.rg.name
  location  = azurerm_resource_group.rg.location
  vmssname  = var.vmssname
  subnet_id = module.network.subnet_id
}