resource "azurerm_resource_group" "ajiri24" {
  name     = "ajiri24"
  location = "Canada Central"
}

resource "azurerm_storage_account" "example" {
  name                     = "ajirijames"
  resource_group_name      = azurerm_resource_group.ajirimcit24.name
  location                 = azurerm_resource_group.canadacentral.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}
