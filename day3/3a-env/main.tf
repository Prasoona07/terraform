provider "azurerm" {
  features {}
}

locals {
  resource_group_name  = "${var.org_name}-${var.rg_prefix}-${var.env}-${var.main_project}-${var.sub_project}"
  storage_account_name = "${var.org_name}${var.st_prefix}${var.env}${var.main_project}${var.sub_project}99487"
}

resource "azurerm_resource_group" "example" {
  name     = local.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "example" {
  name                     = local.storage_account_name
  resource_group_name       = azurerm_resource_group.example.name
  location                 = var.location
  account_tier              = "Standard"
  account_replication_type = "LRS"
}
