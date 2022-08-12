

# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

  # backend "azurerm"{

    provider "azurerm" {
      features {}
      }
      
    
  #  resource_group_name  = "RG-BPINFRA-DEV"
  #  storage_account_name = "sabpstate"
  #  container_name       = "tfstate"
  #  key                  = "staging.terraform.tfstate"
   
  #}
  

# CONFIGURE MICROSOFT AZURE PROVIDER 
provider "azurerm" {
    features {
      #subscription_id = var.subscription_id
      #client_id       = var.client_id
      #client_secret   = var.client_secret
      #tenant_id       = var.tenant_id
    }  
}


 # Create a Resource GROUP
resource "azurerm_resource_group" "rg" {
name = "RG_BPINFRADEV_DEV"
location = "West Europe"
# tags = {
#   "env": "terraform"
#   "project": "labterraform"
#   "Demanda": "DMD001"

}

