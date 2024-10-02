variable "location" {
  type        = string
  description = "Deployment location"
  default     = "West europe"
}

variable "company" {
  type        = string
  description = "Company name"
  default     = "MyCompanyName"
}

variable "project" {
  type        = string
  description = "Project name"
  default     = "MyProjectName"
}

variable "billing_department" {
  type        = string
  description = "Billing departement"
  default     = "MyBillingDepartment"
}

variable "owner" {
  type        = string
  description = "Owner name"
  default     = "MyOwnerName"
}

variable "network_security_group_name" {
  type        = string
  description = "Network security group name"
  default     = "nsg-defaultname"
}

variable "resource_group_name" {
  type        = list(string)
  description = "Resource group names"
  default     = ["rg-ja-networking", "rg-ja-storage"]
}

variable "storage_account_names" {
  type        = list(string)
  description = "Storage account names"
  default     = ["sajaso01", "sajaso02", "sajaso03"]
}

variable "virtual_network_names" {
  type        = list(string)
  description = "Viritual network names"
  default     = ["vnet-ja-01", "vnet-ja-02"]
}