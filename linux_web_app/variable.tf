variable "location" {
  description = "Azure webapp service location."
  type        = string
}

variable "service_plan_id" {
  description = "ID of the Service Plan that hosts the App Service."
  type        = string
}

variable "web_app_name" {
  description = "webservice app name."
  type        = string
}

variable "site_config" {
  description = "Site config for App Service. See [documentation](https://www.terraform.io/docs/providers/azurerm/r/app_service.html#site_config). IP restriction attribute is no more managed in this block."
  type        = any
  default     = {}
}

variable "https_only" {
  description = "HTTPS restriction for App Service. See [documentation](https://www.terraform.io/docs/providers/azurerm/r/app_service.html#https_only)."
  type        = bool
  default     = true
}

variable "resource_group_name" {
  description = "Azure Resource group name."
  type        = string
}

variable "public_network_access_enabled" {
  description = "To enable public network access"
  type        = bool
  default     = true
}

variable "app_settings" {
  description = "Application settings for App Service. See [documentation](https://www.terraform.io/docs/providers/azurerm/r/app_service.html#app_settings)."
  type        = map(string)
  default     = {}
}