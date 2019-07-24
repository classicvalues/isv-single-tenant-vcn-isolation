variable display_name {
  type        = string
  description = "root compartment for the individual tenant compartments"
  default     = "bastion"
}

variable hostname_label {
  type        = string
  description = "compartment name"
  default     = "bastion"
}

variable freeform_tags {
  type        = map
  description = "map of freeform tags to apply to all resources created by this module"
  default     = {}
}

variable defined_tags {
  type        = map
  description = "map of defined tags to apply to all resources created by this module"
  default     = {}
}

variable compartment_id {}
variable source_id {}
variable subnet_id {}
variable availability_domain {}

variable bastion_ssh_private_key_file {
  type        = string
  description = "the private ssh key file to access the bastion instance"
  default     = "~/.ssh/id_rsa"
}

variable bastion_ssh_public_key_file {
  type        = string
  description = "the public ssh key file to be added to the bastion instance ssh_authorized_keys"
  default     = "~/.ssh/id_rsa.pub"
}

variable remote_ssh_private_key_file {
  type        = string
  description = "the private ssh key to provision on the bastion host for access to remote instances"
  default     = "~/.ssh/id_rsa"
}

variable remote_ssh_public_key_file {
  type        = string
  description = "the public ssh key to provision on the bastion host for access to remote instances"
  default     = "~/.ssh/id_rsa.pub"
}

variable shape {
  type        = string
  description = "oci instance shape for the bastion instance"
  default     = "VM.Standard2.1"
}