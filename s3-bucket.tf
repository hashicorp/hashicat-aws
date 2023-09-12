module "s3-bucket" {
  source  = "app.terraform.io/cxrus-jane/s3-bucket/aws"
  version = "3.8.0"
  prefix = "bucket_prefix"
}
