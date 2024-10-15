remote_state {
  backend = "azurerm"
  config = {
    resource_group_name  = "terraformstate"
    storage_account_name = "tftrainingazure"
    container_name       = "terraformstate"
    key                  = "key"
  }
}

inputs = {
  location = "eastus2"
  rg       = "rg-terragrunt"
}