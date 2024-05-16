locals {
  tags = {
        Owner = var.owner
        ProjectName = var.project_name
        ApplicationName = var.application_name
        TerraformManaged = "true"
    }
}