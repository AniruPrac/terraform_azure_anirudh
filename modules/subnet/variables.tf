variable "name" {
  type        = string
  description = "Name of the Subnet"
  default     = ""
}
variable "resource_group_name" {
  type        = string
  description = "The name of an existing resource group. When no subnet name is given than the resource group name must be in the K&E naming format."
}

variable "virtual_network_name" {
  type        = string
  description = "The name of an existing Virtual Network."
}

variable "address_prefixes" {
  type    = list(any)
  default = ["10.1.0.0/24"]
}

variable "service_endpoints" {
  type    = list(any)
  default = ["Microsoft.AzureActiveDirectory", "Microsoft.ContainerRegistry", "Microsoft.KeyVault", "Microsoft.Storage"]
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
