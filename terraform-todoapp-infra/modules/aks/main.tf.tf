resource "azurerm_kubernetes_cluster" "aks" {
  name                = "aks-dev-todoapprak"
  location            = "eastus"
  resource_group_name = "rg-dev-todoapp-01rak"
  dns_prefix          = "aks-dev-todoapprak"

  kubernetes_version  = "1.33"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "standard_dc2ads_v5"
    max_pods   = 250
    os_disk_size_gb = 128
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    network_plugin      = "azure"
    network_plugin_mode = "overlay"
    load_balancer_sku   = "standard"
    pod_cidr            = "10.244.0.0/16"
    service_cidr        = "10.0.0.0/16"
    dns_service_ip      = "10.0.0.10"
  }

  tags = {
    Environment = "dev"
    ManagedBy   = "Terraform"
    Owner       = "TodoAppTeam"
  }
  lifecycle {
    ignore_changes = [
      default_node_pool[0].upgrade_settings
    ]
  }
}
  