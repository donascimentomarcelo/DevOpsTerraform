variable "resource_group" {
  type = string
}

variable "subscription_id" {
  type = string
}

variable "location" {
  type        = string
  description = "azure resources location"
}


variable "tags" {
  type        = map(string)
  description = "azure resources tags"
  default = {
    env   = "develop"
    owner = "Marcelo Sant'Anna"
  }
}

variable "vnet" {
  type        = string
  description = "azure vnet name"
}

variable "address_space" {
  type        = list(string)
  description = "ips range"
}

variable "inbound_rules" {
  type        = map(string)
  description = "ports list to inbound the network security group"
}
