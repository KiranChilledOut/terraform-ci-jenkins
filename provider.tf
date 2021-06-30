provider "azurerm" {
 
  features {
    
  }
}

# Create a resource group
resource "azurerm_resource_group" "demo" {
  name     = "terraform-ci-cd"
  location = var.location
}


