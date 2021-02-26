resource "azurerm_storage_account" "account1" {
  name                     = var.storage_account_name #"examplestoffgfdsdeacc"
  resource_group_name      = var.resource_group_name #azurerm_resource_group.example.name
  location                 = var.location  #azurerm_resource_group.example.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type #"LRS"
  account_kind             = var.account_kind
  is_hns_enabled           = var.is_hns_enabled
}

resource "azurerm_storage_data_lake_gen2_filesystem" "dlakegen2" {
  name               = var.storage_account_name
  storage_account_id = azurerm_storage_account.account1.id

  properties = {
    #hello = "aGVsbG8="
  }
}

resource "azurerm_storage_data_lake_gen2_path" "example" {
  path               = "example"
  filesystem_name    = azurerm_storage_data_lake_gen2_filesystem.dlakegen2.name
  storage_account_id = azurerm_storage_account.account1.id
  resource           = "directory"
}