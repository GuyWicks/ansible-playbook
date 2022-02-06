variable "tenancy_ocid" {
  description = "OCID for Tenancy"
  type        = string
}

variable "compartment_name" {
  description = "Name of the Compartment"
  type        = string
}

variable "compute_display_name" {
  description = "Compute instance display name"
  type        = string
}

variable "compute_ssh_authorized_keys" {
  description = "Path to Compute SSH public key"
  type        = string
}

variable "user_ocid" {
  description = "OCID for User"
  type        = string
}

variable "private_key_path" {
  description = "Path to account private key"
  type        = string
}

variable "fingerprint" {
  description = "Private key fingerprint"
  type        = string
}

variable "region" {
  description = "Region"
  type        = string
}
