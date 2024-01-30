module "subnet" {
  subnets              = var.subnets
  source               = "git::https://github.com/Matthgd/terraform-module-azurerm-subnet.git"
  name                 = var.name
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  subnet_cidr_list     = [each.value.prefix]
  enforce_private_link = true
}