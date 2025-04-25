output "web_public_ip" {
  description = "IP pública de la EC2"
  value       = aws_instance.web.public_ip
}
