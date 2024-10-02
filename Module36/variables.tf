variable "location" {
  type        = string
  description = "Deployment location"
  default     = "West Europe"
}

variable "rgname" {
  type        = string
  description = "Resource Group Name"
  default     = "rg-ja-default"
}

variable "saname" {
  type        = string
  description = "Storage Account Name"
  default     = "sajadefault"
}

variable "company" {
  type        = string
  description = "Company name"

}

variable "project" {
  type        = string
  description = "Project Name"
}

variable "billing_code" {
  type        = string
  description = "Billing code"
}

variable "az_regions" {
  type        = list(string)
  description = "Azure regions for resources"
  default     = ["northeurope", "westeurope"]
}

variable "vmsize" {
  type = map(string)
  default = {
    "small"  = "Standard_B1s"
    "medium" = "Standard_B2s"
    "large"  = "Standard_B4ms"
  }
}