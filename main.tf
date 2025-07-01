# resource group for HR Team
resource "azurerm_resource_group" "rg-block" {
  name     = var.rg_name
  location = var.location
}

resource "azurerm_storage_account" "sablock" {
  name                     = var.sa_name
  location                 = var.location
  resource_group_name      = azurerm_resource_group.rg-block.name
  account_tier             = "Standard"
  account_replication_type = "GRS"
}
