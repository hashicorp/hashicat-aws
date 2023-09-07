module "s3_bucket" {
  source = "app.terraform.io/Trial_HS001/s3-bucket/aws"

  bucket = "my-s3-bucket"
  acl    = "private"
  bucket_prefix = "HimoriShuhei"

  versioning = {
    enabled = true
  }

}
