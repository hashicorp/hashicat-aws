module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = "malik-s3-bucket"
  acl    = "private"
  bucket_prefix = var.prefix

  control_object_ownership = true
  object_ownership         = "ObjectWriter"

  versioning = {
    enabled = true
  }
}
