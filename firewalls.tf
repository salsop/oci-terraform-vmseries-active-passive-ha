data "oci_identity_availability_domains" "available" {
  compartment_id = oci_identity_compartment.compartment.id
}

resource "oci_core_instance" "firewall1" {
  availability_domain = data.oci_identity_availability_domains.available.availability_domains[0].name
  compartment_id      = oci_identity_compartment.compartment.id
  display_name        = "FW-A"
  shape               = var.fw_shape_size

  create_vnic_details {
    subnet_id               = oci_core_subnet.management.id
    private_ip              = var.fw1_management_ip
    display_name            = "management"
    assign_public_ip        = true
    skip_source_dest_check  = false
    #nsg_ids                 = [oci_core_network_security_group.management.id]
  }

  source_details {
    source_type             = "image"
    source_id               = var.fw_ocid
    boot_volume_size_in_gbs = "60"
  }
  preserve_boot_volume = false

  metadata = {
    ssh_authorized_keys = var.ssh_authorized_key
#    user_data           = base64encode(file("./userdata/bootstrap"))
  }
  timeouts {
    create = "60m"
  }
}
resource "oci_core_instance" "firewall2" {
  availability_domain = data.oci_identity_availability_domains.available.availability_domains[1].name
  compartment_id      = oci_identity_compartment.compartment.id
  display_name        = "FW-B"
  shape               = var.fw_shape_size

  create_vnic_details {
    subnet_id               = oci_core_subnet.management.id
    private_ip              = var.fw2_management_ip
    display_name            = "management"
    assign_public_ip        = true
    skip_source_dest_check  = false
    #nsg_ids                 = [oci_core_network_security_group.management.id]
  }

  source_details {
    source_type             = "image"
    source_id               = var.fw_ocid
    boot_volume_size_in_gbs = "60"
  }
  preserve_boot_volume = false

  metadata = {
    ssh_authorized_keys = var.ssh_authorized_key
#    user_data           = base64encode(file("./userdata/bootstrap"))
  }
  timeouts {
    create = "60m"
  }
}