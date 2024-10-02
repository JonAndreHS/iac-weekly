variable "saname" {
  description = "The name of the storage account"
  type        = string
  default     = "satfdefaultja"
}

variable "rgname" {
  description = "The name of the resource group"
  type        = string
  default     = "rg-tf-default-ja"
}

variable "location" {
  description = "The location of the resources"
  type        = string
  default     = "westeurope"
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