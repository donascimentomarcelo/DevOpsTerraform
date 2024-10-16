
resource "azurerm_resource_group" "main" {
  name     = "rg-terraform"
  location = "brazilsouth"
}


resource "azurerm_virtual_network" "main" {
  name                = "vnet-name"
  resource_group_name = "rg-terraform"
  location            = "brazilsouth"
  address_space       = ["10.0.0.0/16", "192.168.0.0/16"]
}

resource "azurerm_network_security_group" "main" {
  name                = "ngs-trainning"
  location            = "eastus2"
  resource_group_name = "rg-terraform"
  depends_on          = [azurerm_resource_group.main]
  tags = {
    env   = "hml"
    owner = "Marcelo Sant'Anna"
  }
}
