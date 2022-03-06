# Outputs file
output "catapp_url" {
  value = "http://${aws_eip.hashicat.public_dns}"
}

output "catapp_ip" {
  value = "http://${aws_eip.hashicat.public_ip}"
}

output "alb_dns_name" {
  value       = module.scalable-web-server.alb_dns_name
  description = "The domain name of the load balancer"
}
