include {
  path = find_in_parent_folders()
}

terraform {
  source = "../storage"
}

dependency "resourcegroup" {
  config_path = "./../resourcegroup"

  mock_outputs = {
    resource_group_name = "default-rg-name"
  }
}

inputs = {
  resource_group_name = dependency.resourcegroup.outputs.resource_group_name
}