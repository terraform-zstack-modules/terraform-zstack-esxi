#
# Contextual Fields
#

variable "context" {
  description = <<-EOF
Receive contextual information. When Walrus deploys, Walrus will inject specific contextual information into this field.

Examples:
```
context:
  project:
    name: string
    id: string
  environment:
    name: string
    id: string
  resource:
    name: string
    id: string
```
EOF
  type        = map(any)
  default     = {}
}

variable "esxi_image_name" {
  type        = string
  description = "The name of the ESXi image to be created"
}

variable "esxi_iso_url" {
  type        = string
  description = "The URL of the ESXi ISO image"
}

variable "backup_storage_name" {
  type        = string
  description = "Name of the backup storage where the image will be stored"
  default     = "bs"
}

variable "l3_network_name" {
  type        = string
  description = "Name of the L3 network to attach the instance"
  default     = "test"
}

variable "l3_network_uuids" {
  type        = list(string)
  description = "UUIDs of L3 networks (used if l3_network_name is not provided)"
  default     = []
}

variable "instance_offering_name" {
  type        = string
  description = "Name of the instance offering"
  default     = "min"
}

variable "instance_offering_uuid" {
  type        = string
  description = "UUID of the instance offering (used if name is not provided)"
  default     = ""
}

variable "instance_name" {
  type        = string
  description = "Name of the instance to be created"
}

variable "description" {
  type        = string
  description = "Description of the instance"
  default     = ""
}

variable "never_stop" {
  type        = bool
  description = "Whether the instance should never stop"
  default     = true
}

variable "root_disk_size" {
  type        = number
  description = "Size of the root disk in GB"
  default     = 100
}

variable "expunge" {
  type  = bool
  default = true
}

