
resource "oci_identity_compartment" "tf-compartment" {
    # Required
    compartment_id = "ocid1.tenancy.oc1..aaaaaaaah7bp3fu3zdrjqqutysk7spnsmoc2vsg4uznvlukxvgg2hqfamxxq"
    description = "Compartment for Terraform resources."
    name = "your-new-compartment-name"
}
