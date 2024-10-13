module "dev" {
  source          = "../infra"
  subscription_id = var.subscription_id
  location        = var.location
  resource_group  = var.resource_group
  tags            = var.tags
  vnet            = var.vnet
  address_space   = var.address_space
  inbound_rules   = var.inbound_rules
}
