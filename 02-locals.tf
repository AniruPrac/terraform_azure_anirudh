# Define Local Values in Terraform
locals {
  owners = var.business_vertical
  environment = var.environment
  resource_name_prefix = "${var.business_vertical}-${var.environment}"
  common_tags = {
    owners = local.owners
    environment = local.environment
    deployed_by = "Terraform"
  }
} 