module "Gaurav" {
  source        = "app.terraform.io/test-warnock/s3-bucket/aws"
  version       = "2.8.0"
  bucket_prefix = var.prefix
}
