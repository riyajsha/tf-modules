terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.48.0"
    }
  }
}

provider "azurerm" {
features {}
tenant_id = var.tenant-id
subscription_id = var.subscription-id
client_id = var.client-id
client_secret = var.client-secret
}

module "idea_rg" {
    source = "https://github.com/riyajsha/tf-resources.git//resourcegroup"
    rg-name = var.idea-rg-name
    rg-location = var.idea-rg-location
  
}




