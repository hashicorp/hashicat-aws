module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = "escala24x7ops-dev"
  acl    = "private"

  versioning = {
    enabled = true
  }

}