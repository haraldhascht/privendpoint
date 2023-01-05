###########################
## Azure Provider - Main ##
###########################

# Define Terraform provider
terraform {
    required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
    backend "azurerm" {
        resource_group_name  = "rgterraformstate"
        storage_account_name = "stgterraformstatehah"
        container_name       = "tfstate"
        key                  = "terraform.tfstate"
    }
}

# Configure the Azure provider
provider "azurerm" { 
  features {}
  environment     = "public"
  subscription_id = var.azure-subscription-id
  client_id       = var.azure-client-id
  client_secret   = var.azure-client-secret
  tenant_id       = var.azure-tenant-id
}
