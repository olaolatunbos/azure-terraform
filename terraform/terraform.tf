terraform {
  backend "azurerm" {
    resource_group_name  = "taskmanagement-app-dev-rg"
    storage_account_name = "taskmanagementtfstate"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.61.0"
    }
  }

  required_version = ">= 1.3.0"
}
