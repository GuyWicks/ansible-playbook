provider "oci" {
  tenancy_ocid = var_tenancy_ocid
  user_ocid = var_user_ocid 
  private_key_path = var_private_key_path
  fingerprint = var_fingerprint
  region = var_region
}