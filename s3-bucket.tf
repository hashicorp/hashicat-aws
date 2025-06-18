module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = "ikb0-Gaurav"
  acl    = "private"

  versioning = {
    enabled = true
  }

}
