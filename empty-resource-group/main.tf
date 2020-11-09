# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.35"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "demo-rg"
  location = "eastus2"
  tags = {
      Usage = "Customer Demo"
      Teardown = "Yes"
  }
}