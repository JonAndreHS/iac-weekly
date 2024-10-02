variable "vmssname" {
  description = "Name of the virtual machine scale set"
  type        = string
  default     = "vmss-default-ja"
}

variable "rgname" {
  description = "Name of the resource group"
  type        = string
  default     = "rg-tf-default-ja"
}

variable "location" {
  description = "Location of the virtual machine scale set"
  type        = string
  default     = "westeurope"
}

variable "subnet_id" {
  description = "ID of the subnet"
  type        = string
  default     = ""
}