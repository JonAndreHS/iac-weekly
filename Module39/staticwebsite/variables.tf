variable "location" {
  description = "The location/region where the resource group will be created."
  type        = string
  default = "westeurope"
}

variable "rg_name" {
  description = "The name of the resource group in which the resources will be created."
  type        = string
  default = "rg-web"
}

variable "sa_name" {
  description = "The name of the storage account."
  type        = string
  default = "saweb"
}

variable "index_document" {
  description = "The name of the index document."
  type        = string
  default = "index.html"
}

variable "source_content" {
  description = "The content of the index document."
  type        = string
  default = "<h1>Web page created with Terraform</h1>"
}

