terraform {
  backend "azurerm" {
    resource_group_name  = "terraform_rg"
    storage_account_name = "wviriyatfstate"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
    access_key           = "__terraform-backend-key__"
  }
}