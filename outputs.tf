#
# Contextual output
#

output "walrus_project_name" {
  value       = try(local.context["project"]["name"], null)
  description = "The name of project where deployed in Walrus."
}

output "walrus_project_id" {
  value       = try(local.context["project"]["id"], null)
  description = "The id of project where deployed in Walrus."
}

output "walrus_environment_name" {
  value       = try(local.context["environment"]["name"], null)
  description = "The name of environment where deployed in Walrus."
}

output "walrus_environment_id" {
  value       = try(local.context["environment"]["id"], null)
  description = "The id of environment where deployed in Walrus."
}

output "walrus_resource_name" {
  value       = try(local.context["resource"]["name"], null)
  description = "The name of resource where deployed in Walrus."
}

output "walrus_resource_id" {
  value       = try(local.context["resource"]["id"], null)
  description = "The id of resource where deployed in Walrus."
}

output "esxi_instance_ip" {
  description = "IP of the created ESXi instance"
  value       = zstack_instance.esxi.vm_nics[0].ip
}

output "esxi_endpoint" {
  description = "List of IPs of the created ESXi instance"
  value       = "http://${zstack_instance.esxi.vm_nics[0].ip}"
}

output "esxi_password" {
  value       = "默认密码为ZStack@123"
}

output "endpoints" {
  value = {
    esxi_endpoint = "http://${zstack_instance.esxi.vm_nics[0].ip}"
  }
}
