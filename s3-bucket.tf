module "s3_bucket" {
  source  = "app.terraform.io/hashcat-aws-org/s3-bucket/aws"
  version = "3.2.0"

  acceleration_status = "Enabled"
  acl = "grant"
  bucket = "s3-module-test"
  bucket_prefix = 09979
  expected_bucket_owner = "09979-owner"
  policy = 1
  request_payer = 1
}