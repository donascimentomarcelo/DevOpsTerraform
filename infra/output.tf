output "vnet" {
  value = azurerm_virtual_network.main.name
}

output "blobstorage" {
  value = azurerm_storage_container.main.name
}
