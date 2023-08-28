module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  acl    = "private"
  bucket_prefix = "svvskoundinya"

  versioning = {
    enabled = true
  }

}