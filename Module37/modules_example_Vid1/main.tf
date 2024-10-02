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

module "ResourceGroupe" {
  source    = "./ResourceGroup"
  base_name = "tf-demo-ja"
  location  = "westeurope"
}

module "StorageAccount" {
  source    = "./StorageAccount"
  base_name = "satfdemoja"
  rgname    = module.ResourceGroupe.rg_name_output
  location  = "westeurope"
}