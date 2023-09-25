resource "azurerm_resource_group" "demo" {
  name     = "rg-github-sea-001"
  location = "southeastasia"
}

##  Demo now
resource "azurerm_storage_account" "StorageAccountDemo" {
  name                     = "storageaccount10080"
  resource_group_name      = azurerm_resource_group.demo.name
  location                 = azurerm_resource_group.demo.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    video = "azure"
    channel = "CloudQuickLabs"
  }
}
