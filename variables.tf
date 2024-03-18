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
  default = "5524-RG"
}

variable "vnet_name" {
  default = "5524-VNET"
}

variable "subnet_name" {
  default = "5524-SUBNET"
}

variable "nsg_name" {
  default = "5524-NSG"
}
