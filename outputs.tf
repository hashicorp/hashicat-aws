# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: Apache-2.0

# Outputs file
output "catapp_url" {
  value = "http://${aws_eip.hashicat.public_dns}"
}

output "catapp_ip" {
  value = "http://${aws_eip.hashicat.public_ip}"
}
