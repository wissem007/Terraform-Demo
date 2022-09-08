resource "azurerm_resource_group" "RG-Terraform" {
  name     = "RG-Terraform-resources"
  location = "West Europe"
}

resource "azurerm_service_plan" "ASP-TerraForm" {
  name                = "terraform-appserviceplan"
  resource_group_name = azurerm_resource_group.RG-Terraform.name
  location            = azurerm_resource_group.RG-Terraform.location
  os_type             = "Linux"
  sku_name            = "P1v2"
}



