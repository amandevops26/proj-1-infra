terraform {
  required_version = ">= 1.6.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.80.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-terraform-state"
    storage_account_name = "stchortfstate123"
    container_name       = "tfstate"
    key                  = "preprod.tfstate"
  }
}

provider "azurerm" {
  features {}
}