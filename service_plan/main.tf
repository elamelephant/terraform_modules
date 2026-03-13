# Create the Linux App Service Plan
# Detail : https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/service_plan
resource "azurerm_service_plan" "appserviceplan" {
  name                = "webapp-asp-${var.plan_name}"
  location            = var.location
  resource_group_name = var.group_name
  os_type             = var.os_type
  sku_name            = var.sku_name
}