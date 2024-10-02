variable "location" {
  description = "The location/region where the resource group will be created."
  type        = string
}

variable "rg_name" {
  description = "The name of the resource group in which the resources will be created."
  type        = string
}

variable "sa_name" {
  description = "The name of the storage account."
  type        = string
}

variable "index_document" {
  description = "The name of the index document."
  type        = string
}

variable "source_content" {
  description = "The content of the index document."
  type        = string
}

