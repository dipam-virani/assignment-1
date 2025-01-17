locals {
  common_tags = {
    Assignment     = "CCGC 5502 Automation Assignment"
    Name           = "Huzaifa.Compounder"
    ExpirationDate = "2024-12-31"
    Environment    = "Learning"
  }
}

variable "location" {
  description = "Location for the resource group"
  type        = string
  default     = "canadacentral"
}

variable "resource_group_name" {
  default = "7297-RG"
}

variable "vnet_name" {
  default = "7297-VNET"
}

variable "subnet_name" {
  default = "7297-SUBNET"
}

variable "nsg_name" {
  default = "7297-NSG"
}
