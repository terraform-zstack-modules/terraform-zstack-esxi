locals {
  context = var.context
}

module "esxi_image" {
  source = "git::https://github.com/terraform-zstack-modules/terraform-zstack-image.git"

  create_image        = true
  image_name          = var.esxi_image_name
  image_url           = var.esxi_iso_url
  guest_os_type      = "Other"
  platform           = "Other"
  format             = "iso"
  architecture       = "x86_64"
  expunge            = var.expunge

  backup_storage_name = var.backup_storage_name
}

data "zstack_l3networks" "l3networks" {
  count = var.l3_network_name != null ? 1 : 0
  name  = var.l3_network_name
}

data "zstack_instance_offers" "offers" {
  count = var.instance_offering_name != null ? 1 : 0
  name  = var.instance_offering_name
}

locals {
  l3_network_uuids = var.l3_network_name != "" ? [data.zstack_l3networks.l3networks[0].l3networks[0].uuid] : var.l3_network_uuids

  instance_offering_uuid = var.instance_offering_uuid != "" ? var.instance_offering_uuid : (
    try(data.zstack_instance_offers.offers[0].instance_offers[0].uuid, "")
  )
}

resource "zstack_instance" "esxi" {
    name                   = var.instance_name
    description            = var.description
    instance_offering_uuid = local.instance_offering_uuid != "" ? local.instance_offering_uuid : null
    l3_network_uuids       = local.l3_network_uuids
    never_stop             = var.never_stop
    image_uuid             = module.esxi_image.image_uuid
    root_disk         =  {
        size = var.root_disk_size
    }
    expunge            = var.expunge
}
