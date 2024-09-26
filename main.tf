terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.3.0"
    }
  }
}

provider "azurerm" {
  features {
  }
  subscription_id = "30ee9279-e76e-409d-8973-00c9792f6bcb"
}

resource "azurerm_resource_group" "rg" {
  name     = var.rgname
  location = var.location
}

data "azurerm_client_config" "current" {} 

module "network" {
  source     = "./modules/network"
  rgname     = azurerm_resource_group.rg.name
  location   = var.location
  vnetname   = var.vnetname
  nsgname    = var.nsgname
  subnet_name = var.subnet_name
}

module "storage" {
  source   = "./modules/storage"
  rgname   = azurerm_resource_group.rg.name
  location = var.location
  saname   = var.saname
  scname   = var.scname
}

module "virtual_machine" {
  source        = "./modules/virtual_machine"
  rgname        = azurerm_resource_group.rg.name
  location      = var.location
  pipname       = var.pipname
  interfacename = var.interfacename
  vmname        = var.vmname
  subnet_id     = module.network.subnet_id
}

module "key_vault" {
  source      = "./modules/key_vault"
  rgname      = azurerm_resource_group.rg.name
  location    = var.location
  kvname      = var.kvname
  kvsvmname   = var.kvsvmname
  kvssaakname = var.kvssaakname
}
