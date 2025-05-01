output "security_group_id" {
  value = aws_security_group.ecs_sg.id
}
output "private_key_pem" {
  description = "Private key content to use for SSH"
  value       = tls_private_key.ecs_key.private_key_pem
  sensitive   = true
}

output "key_name" {
  description = "Name of the key pair"
  value       = aws_key_pair.ecs_key_pair.key_name
}
