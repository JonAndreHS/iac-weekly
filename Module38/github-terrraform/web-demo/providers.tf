terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.3.0"
    }
  }

  backend "azurerm" {
    resource_group_name   = "rg-backend-tfstate-ja"
    storage_account_name  = "sabetfs23of4gg3wc"
    container_name        = "tfstate"
    key                   = "web-demo.terraform.tfstate"
  }  
}


provider "azurerm" {
  subscription_id = "7c064ed9-c59f-4935-938b-f1a654d088a7"
  features {}
}