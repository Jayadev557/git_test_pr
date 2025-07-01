# resource group for HR Team
resource "azurerm_resource_group" "rg-block" {
  name     = var.rg_name
  location = var.location
}


