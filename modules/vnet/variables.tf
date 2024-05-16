variable "vnet_name" {
  type        = string
  description = "Name of the virtual network"
  default     = ""
}

variable "resource_group_name" {
  type        = string
  description = "The name of an existing resource group where the storage account lives. When no storage account name is given than the resource group name must be in the K&E naming format."
}

variable "location" {
  type = string
}

variable "address_space" {
  type    = list(any)
  default = ["10.1.0.0/16"]
}

variable "vnet_dns_servers" {
  type        = list(any)
  description = "DNS for virtual network"
  default     = []
}

variable "zone" {
  type        = string
  description = "Enter abbreviation for Zone. e=External, i=Internal, m=Management"
  default     = ""
}

variable "owner" {
  description = "The owner of the storage account"
  type        = string
  default     = "Anirudh"
}

variable "project_name" {
  description = "The project name that this storage account belongs to"
  type        = string
  default     = "ProjectK"
}

variable "application_name" {
  description = "The application name that this storage account belongs to"
  type        = string
  default     = "app"
}

variable "business_divsion" {
  description = "Business Division"
  type        = string
  default     = "vertical"
}

variable "environment" {
  description = "Environment Ex: Dev, QA, etc."
  type = string
}