variable "storage_account_name" {
  type        = string
  description = "(Optional) The name of the storage account. When the variable name is left empty, than the storage account name must be in the K&E naming format."
  default     = ""
}
variable "resource_group_name" {
  type        = string
  description = "(Required) The name of an existing resource group for the storage account. When the variable name is left empty, than the resource group name must be in the K&E naming format."
  default     = ""
}
variable "location" {
  type = string
  default = "northcentralus"
}

variable "index" {
  type        = string
  description = "When more than one storage acccount is needed in a resource group this index number can be used."
  default     = ""
}
variable "storage_account_tier" {
  description = "(Required) Defines the Tier to use for this storage account. Valid options are Standard* and Premium. Changing this forces a new resource to be created"
  default     = "Standard"
}
variable "storage_account_replication_type" {
  description = "(Required) Defines the type of replication to use for this storage account. Valid options are LRS*, GRS, RAGRS and ZRS."
  default     = "LRS"
}
variable "storage_account_kind" {
  description = " (Optional) Defines the Kind of account. Valid options are BlobStorage, BlockBlobStorage, FileStorage, Storage and StorageV2. Changing this forces a new resource to be created. Defaults to StorageV2"
  default     = "StorageV2"
}
variable "enable_https_traffic_only" {
  description = "(Optional) Boolean flag which forces HTTPS if enabled, see here for more information. Defaults to true."
  default     = "true"
}

variable "minimum_tls_version" {
  type    = string
  default = "TLS1_2"
}

variable "retention_days" {
  description = "The number of days to retain data that is deleted"
  type        = number
  default     = 7
}

variable "enable_hns" {
  description = "Enable the HNS feature of Storage Account"
  type        = bool
  default     = false
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