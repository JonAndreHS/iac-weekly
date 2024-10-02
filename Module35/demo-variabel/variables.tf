variable "location" {
  type        = string
  description = "Deployment location"
  default     = "West Europe"
}

variable "rgname" {
  type        = string
  description = "Resource Group Name"
  default     = "jon-andre-rg"
}

variable "saname" {
  type        = string
  description = "Storage Account Name"
}