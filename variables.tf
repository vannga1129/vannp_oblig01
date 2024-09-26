variable "rgname" {
  type        = string
  description = "The name of the resource group"
  default     = "rg-tf-demo"
}

variable "location" {
  type        = string
  description = "The location of the resource group"
  default     = "westeurope"
}

# variables for network module
variable "nsgname" {
  type        = string
  description = "The name of the network security group"
  default     = "nsg-tf-demo-001"
}

variable "vnetname" {
  type        = string
  description = "The name of the virtual network"
  default     = "vnet-tf-demo-001"
}

variable "subnet_name" {
  type        = string
  description = "The name of the subnet"
  default     = "subnet-tf-demo-001"
}

# variables for storage module
variable "saname" {
  type        = string
  description = "The name of the storage account"
  default     = "satfdemo001"
}

variable "scname" {
  type        = string
  description = "The name of the storage container"
  default     = "sctfdemo001"
}

# variables for virtual_machine module
variable "interfacename" {
  type        = string
  description = "The name of the network interface"
  default     = "ni-tf-demo-001"
}

variable "pipname" {
  type        = string
  description = "The name of the public ip"
  default     = "pip-tf-demo-001"
}

variable "vmname" {
  type        = string
  description = "The name of the linux virtual machine"
  default     = "lvm-tf-demo-001"
}

# variables for key_vault module
variable "kvname" {
  description = "The name of the Key Vault"
  type        = string
  default     = "kv-tf-demo-001"
}

variable "kvssaakname" {
  description = "The name of the Key Vault secret for the Storage Account Access Key."
  type        = string
  default     = "storage-account-access-key"
}


variable "kvsvmname" {
  description = "The name of the Key Vault secret for VM credentials."
  type        = string
  default     = "vm-credentials"
}


