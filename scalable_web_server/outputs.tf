
output "alb_dns_name" {
  value       = module.scalable-web-server.alb_dns_name
  description = "The domain name of the load balancer"
}
