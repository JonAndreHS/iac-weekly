variable "nsgname" {
  description = "Name of the network security group"
  type        = string
  default     = "nsg-tf-default"
}

variable "vnetname" {
  description = "Name of the virtual network"
  type        = string
  default     = "vnet-tf-default"
}

variable "rgname" {
  description = "The name of the resource group"
  type        = string
  default     = "rg-tf-default"
}

variable "location" {
  description = "The location/region for the virtual network"
  type        = string
  default     = "westeurope"
}

variable "subnetname" {
  description = "Name of the subnet"
  type        = string
  default     = "subnet-tf-default"
}