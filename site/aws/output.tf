output "nodes" {
  value = {
    master  = aws_instance.master_vm
  }
}

output "ip_address" {
    value = {
    for node in concat(aws_instance.master_vm):
      node.tags["Name"] => node.public_ip
  }
}
