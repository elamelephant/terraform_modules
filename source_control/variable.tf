variable "webapp_id" {
  description = "ID of the web app service."
  type        = string
}

variable "repo_url" {
  description = "Source control's repo url"
  type        = string
}

variable "branch_name" {
  description = "Source control branch name."
  type        = string
  default     = "main"
}

variable "use_manual_integration" {
  description = "To integrate the SCM manually"
  type        = bool
  default     = false
}

variable "mercurial" {
  description = "Mercurial (hg) in Azure App Service is a supported distributed version control system that allows you to set up continuous deployment from external repositories. It is primarily used as an alternative to Git, allowing developers to pull code changes directly into their app"
  type        = bool
  default     = false
}

variable "generate_workflow_file" {
  description = "This to generate a workflow file for the continious deployment"
  type        = bool
  default     = false
}

variable "runtime_stack" {
  description = "To define the runtime stack, it could be python or java or dotnet etc"
  type        = string
}

variable "runtime_version" {
  description = "To define the runtime stack version"
  type        = string
}




