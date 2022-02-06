
resource "oci_identity_compartment" "tf-compartment" {
    # Required
    compartment_id = var_compartment_id
    description = "Compartment for Terraform resources."
    name = var_compartment_name
}
