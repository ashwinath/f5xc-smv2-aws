output "aws" {
  value = module.aws
  sensitive = true
}

output "ip_address" {
  value = module.aws[*].node.aws[*].public_ip
}
