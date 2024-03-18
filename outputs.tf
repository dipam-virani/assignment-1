// Output the resource group name
output "Resourse_Group_Name" {
  value = module.rgroup-5524.resource_group_name
}
// Output the location
output "location" {
  value = module.rgroup-5524.location
}

// Output the virtual network name
output "virtual_network_name" {
  value = module.network-5524.vnet_name
}
// Output the subnet name
output "subnet_name" {
  value = module.network-5524.subnet_name
}
// Output the subnet id
output "subnet_id" {
  value = module.network-5524.subnet_id
}


// Output the log analytics workspace name
output "log_analytics_workspace_name" {
  value = module.common-5524.log_analytics_workspace_name
}

// Output the recovery services vault name
output "recovery_services_vault_name" {
  value = module.common-5524.recovery_services_vault_name
}

// Output the storage account name
output "storage_account_name" {
  value = module.common-5524.storage_account_name
}

// Output the storage account primary blob endpoint
output "storage_account-primary_blob_endpoint" {
  value = module.common-5524.storage_account-primary_blob_endpoint
}

// Output the datadisk name
output "datadisk_name" {
  value = module.datadisk-5524.datadisk_name
}
// Output the linux virtual machine hostname
output "vmlinux-hostname" {
  value = module.vmlinux-5524.vmlinux
}

// Output the linux virtual machine fully qualified domain name
output "vmlinux-fqdn" {
  value = module.vmlinux-5524.vmlinux-fqdn
}

// Output the linux virtual machine private IP address
output "vmlinux-private-ip" {
  value = module.vmlinux-5524.vmlinux-private-ip
}

// Output the linux virtual machine public IP address
output "vmlinux-public-ip" {
  value = module.vmlinux-5524.vmlinux-public-ip
}

// Output the linux virtual machine network interface IDs
output "vmlinux-nic-ids" {
  value = module.vmlinux-5524.vmlinux-nic-ids
}

// Output the windows virtual machine hostname
output "vmwindows-hostname" {
  value = module.vmwindows-5524.windows
}

// Output the windows virtual machine fully qualified domain name
output "vmwindows-fqdn" {
  value = module.vmwindows-5524.windows_vm_fqdn
}

// Output the windows virtual machine private IP address
output "vmwindows-private-ip" {
  value = module.vmwindows-5524.windows_private_ip_address
}

// Output the windows virtual machine public IP address
output "vmwindows-public-ip" {
  value = module.vmwindows-5524.windows_public_ip_address
}

// Output the windows virtual machine network interface IDs
output "vmwindows-nic-ids" {
  value = module.vmwindows-5524.windows_nic_id
}


// Output the load balancer public IP address
output "loadbalancer-public-ip" {
  value = module.loadbalancer-5524.loadbalancer-public-ip
}

// Output the load balancer name
output "loadbalancer-name" {
  value = module.loadbalancer-5524.loadbalancer-name
}



// Output the database instance name
output "database_instance_name" {
  value = module.database-5524.database_instance_name
}
