#  Deploy code from a public GitHub repo
resource "azurerm_app_service_source_control" "sourcecontrol" {
  app_id             = var.webapp_id
  repo_url           = var.repo_url
  branch             = var.branch_name
  use_manual_integration = var.use_manual_integration
  use_mercurial      = var.mercurial
  github_action_configuration {
    generate_workflow_file = var.generate_workflow_file
    code_configuration {
      runtime_stack = var.runtime_stack
      runtime_version = var.runtime_version
  }
}
}