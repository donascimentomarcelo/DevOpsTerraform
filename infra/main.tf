
resource "azurerm_resource_group" "main" {
  name     = var.resource_group
  location = var.location
  tags     = merge(var.tags, { system = "root" })
}

resource "random_string" "main" {
  length  = 5
  special = false
  upper   = false
}

resource "azurerm_storage_account" "main" {
  name                     = "tftraining${random_string.main.result}"
  resource_group_name      = var.resource_group
  location                 = var.location
  account_tier             = "Standard"
  access_tier              = "Hot"
  account_replication_type = "LRS"
  depends_on               = [azurerm_resource_group.main]
}

resource "azurerm_storage_container" "main" {
  name                 = "terraformcontainer"
  storage_account_name = azurerm_storage_account.main.name
  depends_on           = [azurerm_storage_account.main]
}

resource "azurerm_virtual_network" "main" {
  name                = var.vnet
  resource_group_name = azurerm_resource_group.main.name
  location            = var.location
  address_space       = var.address_space
}

resource "azurerm_network_security_group" "main" {
  name                = "ngs-trainning"
  location            = "eastus2"
  resource_group_name = azurerm_resource_group.main.name
  depends_on          = [azurerm_resource_group.main]
}

resource "azurerm_network_security_rule" "main" {
  for_each                    = var.inbound_rules
  resource_group_name         = azurerm_resource_group.main.name
  name                        = "inboundport_${each.value}"
  priority                    = each.key
  destination_port_range      = each.value
  direction                   = "Inbound"
  access                      = "Allow"
  source_port_range           = "*"
  protocol                    = "Tcp"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  network_security_group_name = azurerm_network_security_group.main.name
}
