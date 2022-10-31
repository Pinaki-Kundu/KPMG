module "naming" {
  source = "Azure/naming/azurerm"
  suffix = ["pk-assemnt"]
}

resource "azurerm_public_ip" "ip" {
  name                = module.naming.public_ip
  location            = var.location
  allocation_method   = "Static"
  resource_group_name = var.resource_group_name
}