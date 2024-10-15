include {
  path = find_in_parent_folders()
}

terraform {
  source = "../resourcegroup"
}

inputs = {
  resource_group_name = "default-rg-name"
  location            = "eastus2"
}