variable "resource_group_name" {
    description = "Name of resource group"
    type = string
    default = ""
}

variable "location" {
    description = "Location of resource group to be created"
    type = string
    default = ""
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