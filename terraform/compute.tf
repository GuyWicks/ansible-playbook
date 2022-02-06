

resource "oci_core_instance" "ubuntu_instance" {
    # Required
    availability_domain = data.oci_identity_availability_domains.ads.availability_domains[0].name
    compartment_id = oci_identity_compartment.tf-compartment.id
    shape = "VM.Standard.A1.Flex"
    shape_config {
        memory_in_gbs = 4
        ocpus = 1
    }

    source_details {
        source_id = "ocid1.image.oc1.uk-london-1.aaaaaaaa7vmmzcxwdnhxxfzuguh64yvvsunkvyoumr4qdcqjb4muwodxrvca"
        source_type = "image"
    }

    # Optional
    display_name = var.compute_display_name
    create_vnic_details {
        assign_public_ip = true
        subnet_id = oci_core_subnet.vcn-public-subnet.id
    }
    metadata = {
        ssh_authorized_keys = file(var.compute_ssh_authorized_keys)
    } 
    preserve_boot_volume = false
}
