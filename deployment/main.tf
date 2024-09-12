provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "tetris_rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.cluster_name
  location            = azurerm_resource_group.tetris_rg.location
  resource_group_name = azurerm_resource_group.tetris_rg.name
  dns_prefix          = var.dns_prefix

  default_node_pool {
    name       = "default"
    node_count = var.node_count
    vm_size    = var.vm_size
  }

  identity {
    type = "SystemAssigned"
  }
}

output "kube_config" {
  value     = azurerm_kubernetes_cluster.aks.kube_admin_config_raw
  sensitive = true
}

variable "resource_group_name" {
  description = "The name of the resource group"
}

variable "location" {
  description = "The location for the resource group"
  default     = "East US"
}

variable "cluster_name" {
  description = "The name of the AKS cluster"
}

variable "dns_prefix" {
  description = "The DNS prefix for the AKS cluster"
}

variable "node_count" {
  description = "The number of nodes for the AKS cluster"
  default     = 1
}

variable "vm_size" {
  description = "The size of the VM for the AKS nodes"
  default     = "Standard_DS2_v2"
}
