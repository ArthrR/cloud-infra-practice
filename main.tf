# Configuração do Provedor (Azure)
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

# Recurso: Criar um Grupo de Recursos
resource "azurerm_resource_group" "lab_teste" {
  name     = "rg-wso2-interview"
  location = "East US"
}

# Create a Virtual Network
resource "azurerm_virtual_network" "lab_teste" {
  name                = "vnet-wso2-interview"
  location            = azurerm_resource_group.lab_teste.location
  resource_group_name = azurerm_resource_group.lab_teste.name
  address_space       = ["237.84.2.178/16"]
}
