# Outputs file
output "catapp_url" {
  value = "http://${aws_eip.hashicat.public_ip}"
}

output "private_key" {
  value = "${tls_private_key.hashicat.private_key_pem}"
}