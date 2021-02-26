variable "resource_group_name" {
  default     = "testtest"
  description = "default value"
}

variable "location" {
  default     = "westeurope"
  description = "location of the resource group"
}

variable "storage_account_name" {
  default = "teststacc1"
  description = "storage account name"
}

variable "account_tier" {
  default = "Standard"
  description = "type of account tier"
}

variable "account_replication_type" {
  default = "LRS"
}

variable "account_kind" {
  default = "StorageV2"
  description = "type of account"
}

variable "is_hns_enabled" {
  default = true
  description = "type of is hns"
}

####

#module "storage" {
#  source = "git@cipipeline.rbxd.ds:PeroneA/storage.git"
#
#  resource_group_name  = "datalakexpc"
#  location             = "westeurope"
#  storage_account_name = "testngaccalex1"
#
#  # To enable advanced threat protection set argument to `true`
#  enable_advanced_threat_protection = false
#
#  # Container lists with access_type to create
#  containers_list = [
#    { name = "container1", access_type = "private" },
#  ]
#  tags = {
#  }
#}
#
#resource "azurerm_storage_account" "exa" {
#  name                     = "examplestoffgfdsdeacc"
#  resource_group_name      = "datalakexpc" #azurerm_resource_group.example.name
#  location                 = "westeurope"  #azurerm_resource_group.example.location
#  account_tier             = "Standard"
#  account_replication_type = "LRS"
#  account_kind             = "StorageV2"
#  is_hns_enabled           = "true"
#}
#
#resource "azurerm_storage_data_lake_gen2_filesystem" "example" {
#  name               = "example"
#  storage_account_id = azurerm_storage_account.exa.id
#
#  properties = {
#    hello = "aGVsbG8="
#  }
#}

#resource "azurerm_storage_data_lake_gen2_filesystem" "example" {
#  name               = "testing1234"
#  storage_account_id =  "/subscriptions/6c4237fe-478d-4c93-a3e8-9a248ddc0182/resourceGroups/datalakexpc/providers/Microsoft.Storage/storageAccounts/testngaccalex1" #azurerm_storage_account.example.id
#
#  properties = {
#    hello = "aGVsbG8="
#  }
#}

