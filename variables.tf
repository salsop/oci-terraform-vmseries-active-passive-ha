variable "tenancy_ocid" {
  description = "OCID of the OCI tenant"
}
variable "user_ocid" {
  description = "OCID of the user creating the infrastructure"
}
variable "fingerprint" {
  description = "fingerprint of the API key used for authentication"
}
variable "private_key_path" {
  description = "path to the private key used for authentication"
}
variable "region" {
  description = "region where the compartment is located (e.g. uk-london-1)"
}
variable "parent_compartment_ocid" {
  description = "OCID of the parent compartment"
}

variable "compartment_name" {
  description = "name of the compartment to create"
  default = "vmseries-compartment"
}
variable "vcn_cidr" {
  description = "cidr block to use for the vcn"
  default = "192.168.0.0/16"
}

variable "fw_mgmt_src_ip" {
  description = "source IP or CIDR allowed to manage the FW"
}
variable "fw_ocid" {
  description = "OCID of the FW image to deploy"
}
variable "fw_shape_size" {
  description = "shape size for the FW (VM.Standard2.4 minimum)"
  default = "VM.Standard2.4"
}
variable "ssh_authorized_key" {
  description = "public SSH key to install on the hosts"
}
variable "management_cidr" {
  description = "CIDR block for the management subnet"
  default = "192.168.0.0/24"
}
variable "fw1_management_ip" {
  description = "IP address for the fw1 management interface"
  default = "192.168.0.11"
}

variable "fw2_management_ip" {
  description = "IP address for the fw2 management interface"
  default = "192.168.0.12"
}
variable "untrust_cidr" {
  description = "CIDR block for the untrust subnet"
  default = "192.168.1.0/24"
}

variable "fw1_untrust_ip" {
  description = "IP address for the fw1 untrust interface"
  default = "192.168.1.101"
}
variable "fw2_untrust_ip" {
  description = "IP address for the fw2 untrust interface"
  default = "192.168.1.102"
}
variable "untrust_floating_ip" {
  description = "floating IP address for the untrust interface"
  default = "192.168.1.100"
}
variable "trust_cidr" {
  description = "CIDR block for the trust subnet"
  default = "192.168.2.0/24"
}
variable "fw1_trust_ip" {
  description = "IP address for the fw1 trust interface"
  default = "192.168.2.101"
}
variable "fw2_trust_ip" {
  description = "IP address for the fw2 trust interface"
  default = "192.168.2.102"
}
variable "trust_floating_ip" {
  description = "floating IP address for the trust interface"
  default = "192.168.2.100"
}
variable "ha2_cidr" {
  description = "CIDR block for the ha2 subnet"
  default = "192.168.30.0/24"
}
variable "fw1_ha2_ip" {
  description = "IP address for the fw1 ha2 interface"
  default = "192.168.30.101"
}
variable "fw2_ha2_ip" {
  description = "IP address for the fw2 ha2 interface"
  default = "192.168.30.102"
}
variable "web_cidr" {
  description = "CIDR block for the web subnet"
  default = "192.168.101.0/24"
}
variable "web1_ip" {
  description = "ip adress for web1"
  default = "192.168.101.2"
}
variable "server_shape_size" {
  description = "shape size for the server"
  default = "VM.Standard2.1"
}
variable "ubuntu_image_ocid" {
  default = {
    ap-melbourne-1 = "ocid1.image.oc1.ap-melbourne-1.aaaaaaaajdcf2heyxkmgvdtbbczu74cl6qbc5gxew56c3y3q6dbjsul6b6aq"
    ap-mumbai-1 = "ocid1.image.oc1.ap-mumbai-1.aaaaaaaayjxakga6uhq3dcprkziczfnoug5rpwjqfot6s6lteuylbcjv4bya"
    ap-osaka-1 = "ocid1.image.oc1.ap-osaka-1.aaaaaaaapc4kllvk4vib7fhnug7ukm2txuhitdrfhyt7sickogqt7iswvfqq"
    ap-seoul-1 = "ocid1.image.oc1.ap-seoul-1.aaaaaaaazrfma7gwjj36m7vcxeork2azxshoymo4zbi5jfti6zqvcmopix7a"
    ap-sydney-1 = "ocid1.image.oc1.ap-sydney-1.aaaaaaaauskrlywocekwttksypjq5imxevgpfayhfgobemmdio2e42nj5hrq"
    ap-tokyo-1 = "ocid1.image.oc1.ap-tokyo-1.aaaaaaaa3rhjibflbzqbloypnpxegzyxxni2wyllbbilhzowvcja3iz7h4sq"
    ca-montreal-1 = "ocid1.image.oc1.ca-montreal-1.aaaaaaaainz6oiqrgokqfvxpbfwciswg3hjsbno4dlmxkwtl6v6e6tjrsz5a"
    ca-toronto-1 = "ocid1.image.oc1.ca-toronto-1.aaaaaaaatkqz6qc7iojynkffjs75jrvqnxnvycdusat4v3iiea25zb2kftta"
    eu-amsterdam-1 = "ocid1.image.oc1.eu-amsterdam-1.aaaaaaaabp7qk76ijyrminiue2m3biqjfz4dzpfdrdtg5cv2me2gyuptanpq"
    eu-frankfurt-1 = "ocid1.image.oc1.eu-frankfurt-1.aaaaaaaaztrgnqdk6lctht72zn4wjpy6fpaacarblsrl74dq2vnzgipctgeq"
    eu-zurich-1 = "ocid1.image.oc1.eu-zurich-1.aaaaaaaaoj3jvr57jyg5ugeb2oyxr3vdrqt47mls66j3nhb7xjtmlokcdchq"
    me-jeddah-1 = "ocid1.image.oc1.me-jeddah-1.aaaaaaaaa7crfvj23zizibv4n2dne4uc3ksw35judghweftep4mdtlcdmdwa"
    sa-saopaulo-1 = "ocid1.image.oc1.sa-saopaulo-1.aaaaaaaabraq4wsw67oivaicttnmw6oegizim3pb5abxzoj63uzfxxhahuqa"
    uk-gov-london-1 = "ocid1.image.oc4.uk-gov-london-1.aaaaaaaafxczrxrlkccsbyaa2ertdehkpqttx73zwzeq75bowbklsp2pqi2a"
    uk-london-1 = "ocid1.image.oc1.uk-london-1.aaaaaaaa276jkgmoibf3teixw7olzx4oa64bakbj5qaewwxtfwwpenxcf3jq"
    us-ashburn-1 = "ocid1.image.oc1.iad.aaaaaaaa6x4mvi4tkiigibgtovqbinjnmr4qibuygpkifitgd5b7knjni7fq"
    us-langley-1 = "ocid1.image.oc2.us-langley-1.aaaaaaaa65aorjlfq342p2rcjl5afekasasjsrvimqcb7jrjbu5yyyabdvbq"
    us-luke-1 = "ocid1.image.oc2.us-luke-1.aaaaaaaaqgziggzzcow75qwnsovoooxioawzuczpmewiom2ljpf4ywey4dsq"
    us-phoenix-1 = "ocid1.image.oc1.phx.aaaaaaaagmkn4gdhvvx24kiahh2b2qchsictjjnujfw7vtytftmvnteyfckq"
  }
}
