variable "resource_group" {
  type = string
}

variable "location" {
  type = string
}
variable "subscription_id" {
  type = string
}

variable "tags" {
  type        = map(string)
  description = "azure storage"
  default = {
    env   = "develop"
    owner = "Marcelo Sant'Anna"
  }
}
