variable "lb_name" {
    description = "(Required) Specifies the name of the Load Balancer. Changing this forces a new resource to be created."
    type = string
    default = ""
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

variable "lb_sku" {
  type        = string
  description = "SKU (pricing tier) for the load balancer"
}

variable "frontend_ip_configuration_name" {
  type        = string
  description = "Name of the frontend IP configuration"
}

variable "public_ip_address_id" {
  type        = string
  description = "ID of the public IP address associated with the frontend IP configuration"
}


#############################################
# Public Ip Variables
#############################################

variable "public_ip_allocation_method" {
  description = "Public Ip allocation method"
  type = string
  default = "Static"
  
}
variable "public_ip_sku" {
  description = "Public Ip Sku"
  type = string
  default = "Standard"
}

#############################################
#LoadBalancer backend address pool
#############################################

variable "BackEndAddressPool_name" {
  type        = string
  description = "Name of the backend address pool"
}

#############################################
#LoadBalancer probe
#############################################

variable "probe_name" {
  type        = string
  description = "Name of the health probe"
}

variable "port" {
  type        = number
  description = "Port number used for health probes"
}

variable "interval_in_seconds" {
  type        = number
  description = "Interval in seconds between health probes"
}

variable "number_of_probes" {
  type        = number
  description = "Number of consecutive health probe failures before considering the backend unhealthy"
}


#############################################
#LoadBalancer rule 1
#############################################

variable "lb_rule_name" {
  type        = string
  description = "Name of the load balancing rule"
}

variable "protocol" {
  type        = string
  description = "Protocol used for the load balancing rule"
}

variable "frontend_port" {
  type        = number
  description = "Frontend port for the load balancing rule"
}

variable "backend_port" {
  type        = number
  description = "Backend port for the load balancing rule"
}

variable "enable_floating_ip" {
  type        = bool
  description = "Enable floating IP for the load balancing rule"
}

variable "idle_timeout_in_minutes" {
  type        = number
  description = "Idle timeout in minutes for the load balancing rule"
}

variable "enable_tcp_reset" {
  type        = bool
  description = "Enable TCP reset for the load balancing rule"
}

variable "load_distribution" {
  type        = string
  description = "Specifies the load balancing distribution type to be used by the Load Balancer. Possible values are: 'Default' – The load balancer is configured to use a 5 tuple hash to map traffic to available servers. 'SourceIP' – The load balancer is configured to use a 2 tuple hash to map traffic to available servers. 'SourceIPProtocol' – The load balancer is configured to use a 3 tuple hash to map traffic to available servers. Also known as Session Persistence, where in the Azure portal the options are called None, Client IP and Client IP and Protocol respectively."
}

variable "disable_outbound_snat" {
  type        = bool
  description = "Disable outbound SNAT for the load balancing rule"
}

#############################################
#LoadBalancer rule 2
#############################################

variable "lb_rule_name_2" {
  type        = string
  description = "Name of the load balancing rule"
}

variable "protocol_2" {
  type        = string
  description = "Protocol used for the load balancing rule"
}

variable "frontend_port_2" {
  type        = number
  description = "Frontend port for the load balancing rule"
}

variable "backend_port_2" {
  type        = number
  description = "Backend port for the load balancing rule"
}

variable "enable_floating_ip_2" {
  type        = bool
  description = "Enable floating IP for the load balancing rule"
}

variable "idle_timeout_in_minutes_2" {
  type        = number
  description = "Idle timeout in minutes for the load balancing rule"
}

variable "enable_tcp_reset_2" {
  type        = bool
  description = "Enable TCP reset for the load balancing rule"
}

variable "load_distribution_2" {
  type        = string
  description = "Load distribution algorithm for the load balancing rule"
}

variable "disable_outbound_snat_2" {
  type        = bool
  description = "Disable outbound SNAT for the load balancing rule"
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to add to all resources"
  default     = {}
}

#############################################
# Variables for Tags
#############################################
variable "owner" {
  description = "The owner of the storage account"
  type        = string
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