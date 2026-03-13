# terraform_modules examples

## Azure Service Plan Terraform Module

```hcl
module "service_plan" {
  source = "git::https://github.com/elamelephant/terraform_modules.git//service_plan?ref=v1.3"

  plan_name  = <name of the service plan > <string>
  location   = <resource location > <string>
  group_name = <Azure resource group > <string>
  os_type    = <Windows or Linux or Containers > <string>
  sku_name   = <Free/Shared (F1, D1), Basic (B1, B2, B3), Standard (S1, S2, S3), Premium (P1v2–P3v2, P0v3–P3v3, P1v4–P3v4), and Isolated (I1v2–I6v2) > <string>
}
```

## Azure Linux Web App Terraform Module, details: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app

```hcl
module "linux_web_app" {
  source = "git::https://github.com/elamelephant/terraform_modules.git//linux_web_app?ref=v1.3"

  web_app_name         = <Azure web app name > <string>
  location             = <resource location > <string>
  resource_group_name  = <Azure resource group > <string>
  service_plan_id      = <Azure web app service plan id > <string>

  site_config = {
    http2_enabled    = <true or false>
    app_command_line = <start up script command line > ex: "fastapi run main.py"

    # APPLICATION STACK VERSION
    application_stack = {
      python_version = "3.14"
    }
  }

  # APP SETTINGS
  app_settings = {
    SCM_DO_BUILD_DURING_DEPLOYMENT = true # It enables automatic dependency installation
  }
}
```

## Azure web app source control Terraform Module, details: https://registry.terraform.io/providers/hashicorp/azurerm/4.63.0/docs/resources/app_service_source_control

```hcl
module "sourcecontrol" {
  source = "git::https://github.com/elamelephant/terraform_modules.git//source_control?ref=v1.3"

  webapp_id       = <web app id> <string>
  repo_url        = <repo url> <string>
  branch_name     = <branch name> <string>
  runtime_stack   = <runtime stack could be python or java or dotnet> <string>
  runtime_version = <version of runtime stack> <string>

}
```
> ⚠️ **Note:** “Please refer to the example folder to get more information about the sample code”
