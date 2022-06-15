module "s3-bucket" {
  source  = "app.terraform.io/sakamoto-training/s3-bucket/aws"
  version = "2.2.0"
  bucket_prefix = "akinorisakamoto"
  # insert required variables here
}