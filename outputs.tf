output "vm_public_ip" {
  description = "Public IP address of the virtual machine"
  value       = module.virtual_machine.vm_public_ip
}

output "subnet_id" {
  description = "ID of the subnet"
  value       = module.network.subnet_id
}

output "key_vault_id" {
  description = "ID of the Key Vault"
  value       = module.key_vault.key_vault_id
}


