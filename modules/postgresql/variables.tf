variable "postgresql_server_name" {
  type        = string
  description = "Name of the virtual network"
  default     = ""
}

variable "postgresql_database_name" {
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

variable "postgresql_server_sku_name" {
  description = "value"
  type = string
  default = "B_Gen5_2"
  
}

variable "zone" {
  type        = string
  description = "Enter abbreviation for Zone. e=External, i=Internal, m=Management"
  default     = ""
}

variable "owner" {
  description = "The owner of the storage account"
  type        = string
  default = "Anirudh"
}

variable "project_name" {
  description = "The project name that this storage account belongs to"
  type        = string
  default     = "N/A"
}

variable "application_name" {
  description = "The application name that this storage account belongs to"
  type        = string
  default     = "N/A"
}

variable "business_divsion" {
  description = "Business Division"
  type = string
  default = "Vertical"
}

variable "environment" {
  description = "Environment Ex: Dev, QA, etc."
  type = string
}

#########################

variable "administrator_login" {
  description = "Local admin login"
  type = string 
}

variable "administrator_login_password" {
    description = "Administration Login Password"
    type = string
    sensitive = true
}

variable "postgresql_version" {
  description = "PostgreSQL version"
  type = number
}

