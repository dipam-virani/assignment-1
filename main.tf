module "rgroup-7297" {
  source = "./modules/rgroup-7297"

  resource_group_name = var.resource_group_name
  location            = var.location

  common_tags = local.common_tags

}

module "network-7297" {
  source = "./modules/network-7297"

  resource_group_name = module.rgroup-7297.resource_group_name
  location            = module.rgroup-7297.location

  vnet_name   = var.vnet_name
  subnet_name = var.subnet_name
  nsg_name    = var.nsg_name

  common_tags = local.common_tags
}

module "common-7297" {
  source = "./modules/common-7297"

  resource_group_name = module.rgroup-7297.resource_group_name
  location            = module.rgroup-7297.location

  common_tags = local.common_tags
}

module "vmlinux-7297" {
  source = "./modules/vmlinux-7297"

  resource_group_name = module.rgroup-7297.resource_group_name
  location            = module.rgroup-7297.location

  subnet_id           = module.network-7297.subnet_id
  storage_account_uri = module.common-7297.storage_account-primary_blob_endpoint

  common_tags = local.common_tags
}

module "vmwindows-7297" {
  source = "./modules/vmwindows-7297"

  resource_group_name = module.rgroup-7297.resource_group_name
  location            = module.rgroup-7297.location

  subnet_id           = module.network-7297.subnet_id
  storage_account_uri = module.common-7297.storage_account-primary_blob_endpoint

  common_tags = local.common_tags
}

module "datadisk-7297" {
  source = "./modules/datadisk-7297"

  resource_group_name = module.rgroup-7297.resource_group_name
  location            = module.rgroup-7297.location

  linux_vm_ids   = module.vmlinux-7297.vmlinux.ids
  windows_vm_ids = module.vmwindows-7297.windows.ids

  all_vm_ids  = concat(module.vmlinux-7297.vmlinux.ids, module.vmwindows-7297.windows.ids)
  common_tags = local.common_tags
}

module "loadbalancer-7297" {
  source = "./modules/loadbalancer-7297"

  resource_group_name = module.rgroup-7297.resource_group_name
  location            = module.rgroup-7297.location

  linux_vm_nic_ids = module.vmlinux-7297.vmlinux-nic-ids
  linux_vm_name    = module.vmlinux-7297.vmlinux.hostnames
  common_tags      = local.common_tags
}

module "database-7297" {
  source = "./modules/database-7297"

  resource_group_name = module.rgroup-7297.resource_group_name
  location            = module.rgroup-7297.location

  common_tags = local.common_tags
}


