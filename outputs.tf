# Outputs file
output "catapp_url" {
  value = "http://${aws_instance.hashicat.public_dns}"
}
