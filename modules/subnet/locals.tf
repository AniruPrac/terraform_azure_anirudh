locals {
  resource_name_prefix = "${var.business_divsion}-${var.environment}"
  tags = {
        Owner = var.owner
        Environment = var.environment
        ProjectName = var.project_name
        ApplicationName = var.application_name
        TerraformManaged = "true"
    }
}