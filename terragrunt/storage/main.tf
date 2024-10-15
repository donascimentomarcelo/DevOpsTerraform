resource "azurerm_storage_account" "main" {
  name                     = "tftrainingxxyterragrunt"
  resource_group_name      = var.resource_group
  location                 = var.location
  account_tier             = "Standard"
  access_tier              = "Hot"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "main" {
  name                 = "terraformcontainer"
  storage_account_name = azurerm_storage_account.main.name
  depends_on           = [azurerm_storage_account.main]
}
