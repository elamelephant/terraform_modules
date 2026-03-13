variable "sku_name" {
  description = "Stock Keeping Unit selection for webapp service."
  type        = string
}

variable "os_type" {
  description = "os_type either Linux or Windows"
  type        = string
}

variable "plan_name" {
  description = "Service Plan name"
  type        = string
}

variable "group_name" {
  description = "Azure group name"
  type        = string
}

variable "location" {
  description = "Azure web service plan location"
  type        = string
}

