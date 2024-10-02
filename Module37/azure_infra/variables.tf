variable "rgname" {
  type        = string
  description = "The name of the resource group"
  default     = "rg-tf-default"
}

variable "location" {
  type        = string
  description = "The location/region for the resource group"
  default     = "westeurope"
}

//Variables for the network module
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

variable "subnetname" {
  description = "Name of the subnet"
  type        = string
  default     = "subnet-tf-default"
}

//Variables for the database module
variable "saname" {
  description = "The name of the storage account"
  type        = string
  default     = "satfdefaultja"
}

variable "mssqlservername" {
  description = "The name of the SQL server"
  type        = string
  default     = "mssqlsvrtfdefaultja"
}

variable "mssqldbname" {
  description = "The name of the SQL database"
  type        = string
  default     = "mssqldbtfdefaultja"
}

//Variables for the vmss module
variable "vmssname" {
  description = "Name of the virtual machine scale set"
  type        = string
  default     = "vmss-default-ja"
}

variable "subnet_id" {
  description = "ID of the subnet"
  type        = string
  default     = ""
}