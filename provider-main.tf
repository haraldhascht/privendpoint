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
}
