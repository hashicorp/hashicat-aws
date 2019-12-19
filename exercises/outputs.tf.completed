# Outputs file
output "catapp_url" {
  value = "http://${aws_instance.hashicat.public_dns}"
}


output "private_key" {
  value = "${tls_private_key.hashicat.private_key_pem}"
}