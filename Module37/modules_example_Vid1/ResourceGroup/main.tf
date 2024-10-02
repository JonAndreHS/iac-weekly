resource "azurerm_resource_group" "rg-example-ja" {
  name     = "rg-${var.base_name}"
  location = var.location
}

