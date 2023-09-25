terraform {
  required_version = ">= 1.1.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }
  cloud {
    organization = "paras-github-org-sea"
    workspaces {
      name = "paras-github-workspace-1"
    }
  }
}

provider "azurerm" {
  features {}
}
