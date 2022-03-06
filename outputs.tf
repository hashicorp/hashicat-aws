# Outputs file
output "catapp_url" {
  value = "http://${aws_eip.hashicat.public_dns}"
}

output "catapp_ip" {
  value = "http://${aws_eip.hashicat.public_ip}"
}


output "s3_bucket_id" {
  value       = module.s3-bucket.s3_bucket_id
  description = "The domain name of the load balancer"
}

output "vpc_id" {
  value       = "${aws_vpc.hashicat.id}"
  description = "The VPC ID"
}
