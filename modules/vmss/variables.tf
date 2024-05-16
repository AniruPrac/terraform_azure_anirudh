variable "vmss_name" {
    description = "(Required) Name of Virtual Machine scale set"
    type = string
    default = ""
}

variable "resource_group_name" {
    description = "(Required) Name of resource group"
    type = string
    default = ""
}

variable "location" {
    description = "(Required) Location of resource group to be created"
    type = string
    default = ""
}

variable "vmss_sku" {
    description = "(Required) )The Virtual Machine SKU for the Scale Set, such as Standard_F2"
    type = string
    default = ""
}

variable "admin_username" {
    description = "(Required) The username of the local administrator on each Virtual Machine Scale Set instance. Changing this forces a new resource to be created."
    type = string
    default = ""
}

variable "admin_password" {
    description = "(Required) Local admin password"
    type = string
    sensitive = true
}

### Source Image Refecence Block Variables
variable "image_publisher" {
    description = "(Required) Specifies the publisher of the image used to create the virtual machines. Changing this forces a new resource to be created."
    type = string
    default = "Canonical"
}

variable "image_offer" {
    description = "(Required) Specifies the offer of the image used to create the virtual machines. Changing this forces a new resource to be created."
    type = string
    default = ""
}

variable "image_sku" {
    description = "(Required) Specifies the SKU of the image used to create the virtual machines."
    type = string
    default = ""
}

variable "image_version" {
    description = "(Required) Specifies the version of the image used to create the virtual machines."
    type = string
    default = ""
}

#### Tags varialbes

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

variable "storage_account_type" {
    description = "(Optional) Storage Account type for os disk and managed disk"
    type = string
    default = "Standard_LRS"
}

variable "ip_version" {
  description = "Version of Ip address Ex: IPv4 ot IPv6"
  type = string
  default = "IPv4"
  
}

variable "subnet_id" {
  description = "Subnet id associated with VMSS"
  type = string
  default = "N/A"
  
}
# Linux VM NSG Inbound ports.
variable "web_vmss_nsg_inbound_ports" {
  description = "Web VMSS NSG Inbound Ports"
  type = list(string)
  default = [22, 80, 443]
}