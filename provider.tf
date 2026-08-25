terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 5.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "vpn-rg"
    storage_account_name = "agevpn123"
    container_name       = "vpncontainer"
    key                  = "terraform.tfstate"
  }
}
provider "azurerm" {
  features {}
}